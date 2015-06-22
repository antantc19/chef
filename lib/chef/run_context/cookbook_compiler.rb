#
# Author:: Daniel DeLeo (<dan@opscode.com>)
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/log'
require 'chef/recipe'
require 'chef/resource/lwrp_base'
require 'chef/provider/lwrp_base'
require 'chef/resource_definition_list'
require 'chef/cookbook/cookbook_processor'
require 'forwardable'
require 'set'

class Chef
  class RunContext

    # Implements the compile phase of the chef run by loading/eval-ing files
    # from cookbooks in the correct order and in the correct context.
    class CookbookCompiler
      extend Forwardable
      attr_reader :run_context
      attr_reader :run_list_expansion
      def_delegators :run_context, :events, :node, :cookbook_collection, :definitions

      def initialize(run_context, run_list_expansion, events=nil)
        if events
          Chef::Log.deprecation("events is no longer a separate parameter to CookbookCompiler.new and will be removed in Chef 13.")
          if events != run_context.events
            raise "The run context event sink is different from the one passed in to CookbookCompiler.new!"
          end
        end
        @run_context = run_context
        @run_list_expansion = run_list_expansion
        @cookbook_version_compilers = {}
      end

      # Run the compile phase of the chef run. Loads files in the following order:
      # * Libraries
      # * Attributes
      # * LWRPs
      # * Resource Definitions
      # * Recipes
      #
      # Recipes are loaded in precisely the order specified by the expanded run_list.
      #
      # Other files are loaded in an order derived from the expanded run_list
      # and the dependencies declared by cookbooks' metadata. See
      # #cookbook_order for more information.
      def compile
        compile_libraries
        compile_attributes
        compile_lwrps
        compile_resource_definitions
        compile_run_list
      end

      # Extracts the cookbook names from the expanded run list, then iterates
      # over the list, recursing through dependencies to give a run_list
      # ordered array of cookbook names with no duplicates. Dependencies appear
      # before the cookbook(s) that depend on them.
      def cookbook_order
        @cookbook_order ||= begin
          ordered_cookbooks = []
          seen_cookbooks = {}
          run_list_expansion.recipes.each do |recipe|
            cookbook = Chef::Recipe.parse_recipe_name(recipe).first
            add_cookbook_with_deps(ordered_cookbooks, seen_cookbooks, cookbook)
          end
          Chef::Log.debug("Cookbooks to compile: #{ordered_cookbooks.inspect}")
          ordered_cookbooks
        end
      end

      # Loads library files from cookbooks according to #cookbook_order.
      def compile_libraries
        events.library_load_start(count_files_by_segment(:libraries))
        cookbook_order.each do |cookbook|
          compiler_for(cookbook).compile_libraries
        end
        events.library_load_complete
      end

      # Loads attributes files from cookbooks. Attributes files are loaded
      # according to #cookbook_order; within a cookbook, +default.rb+ is loaded
      # first, then the remaining attributes files in lexical sort order.
      def compile_attributes
        events.attribute_load_start(count_files_by_segment(:attributes))
        cookbook_order.each do |cookbook|
          compiler_for(cookbook).compile_attributes
        end
        events.attribute_load_complete
      end

      # Loads LWRPs according to #cookbook_order. Providers are loaded before
      # resources on a cookbook-wise basis.
      def compile_lwrps
        lwrp_file_count = count_files_by_segment(:providers) + count_files_by_segment(:resources)
        events.lwrp_load_start(lwrp_file_count)
        cookbook_order.each do |cookbook|
          compiler_for(cookbook).compile_lwrps
        end
        events.lwrp_load_complete
      end

      # Loads resource definitions according to #cookbook_order
      def compile_resource_definitions
        events.definition_load_start(count_files_by_segment(:definitions))
        cookbook_order.each do |cookbook|
          compiler_for(cookbook).compile_resource_definitions
        end
        events.definition_load_complete
      end

      # Iterates over the expanded run_list, loading each recipe in turn.
      def compile_run_list
        events.recipe_load_start(run_list_expansion.recipes.size)
        run_list_expansion.recipes.each do |recipe|
          cookbook_name, recipe_short_name = Chef::Recipe.parse_recipe_name(recipe_name)
          begin
            compiler_for(cookbook_name).compile_recipe(recipe_short_name)
          rescue Chef::Exceptions::RecipeNotFound => e
            events.recipe_not_found(e)
            raise
          rescue Exception => e
            cookbook, path = resolve_recipe(recipe)
            events.recipe_file_load_failed(cookbooks[], e)
            raise
          end
        end
        events.recipe_load_complete
      end

      alias :compile_recipes :compile_run_list

      def compile_recipe(recipe_name, current_cookbook: nil)
        Chef::Log.debug("Loading Recipe #{recipe_name}")

        cookbook_name, recipe_short_name = Chef::Recipe.parse_recipe_name(recipe_name, current_cookbook: current_cookbook)

        if unreachable_cookbook?(cookbook_name) # CHEF-4367
          Chef::Log.warn(<<-ERROR_MESSAGE)
  MissingCookbookDependency:
  Recipe `#{recipe_name}` is not in the run_list, and cookbook '#{cookbook_name}'
  is not a dependency of any cookbook in the run_list.  To load this recipe,
  first add a dependency on cookbook '#{cookbook_name}' in the cookbook you're
  including it from in that cookbook's metadata.
  ERROR_MESSAGE
        end

        compiler_for(cookbook_name).compile_recipe(recipe_short_name)
      end

      # Whether or not a cookbook is reachable from the set of cookbook given
      # by the run_list plus those cookbooks' dependencies.
      def unreachable_cookbook?(cookbook_name)
        !reachable_cookbooks.include?(cookbook_name)
      end

      # All cookbooks in the dependency graph, returned as a Set.
      def reachable_cookbooks
        @reachable_cookbooks ||= Set.new(cookbook_order)
      end

      private

      # Builds up the list of +ordered_cookbooks+ by first recursing through the
      # dependencies of +cookbook+, and then adding +cookbook+ to the list of
      # +ordered_cookbooks+. A cookbook is skipped if it appears in
      # +seen_cookbooks+, otherwise it is added to the set of +seen_cookbooks+
      # before its dependencies are processed.
      def add_cookbook_with_deps(ordered_cookbooks, seen_cookbooks, cookbook)
        return false if seen_cookbooks.key?(cookbook)

        seen_cookbooks[cookbook] = true
        each_cookbook_dep(cookbook) do |dependency|
          add_cookbook_with_deps(ordered_cookbooks, seen_cookbooks, dependency)
        end
        ordered_cookbooks << cookbook
      end


      def count_files_by_segment(segment)
        cookbook_collection.inject(0) do |count, cookbook_by_name|
          count + cookbook_by_name[1].segment_filenames(segment).size
        end
      end

      # Lists the local paths to files in +cookbook+ of type +segment+
      # (attribute, recipe, etc.), sorted lexically.
      def files_in_cookbook_by_segment(cookbook, segment)
        cookbook_collection[cookbook].segment_filenames(segment).sort
      end

      # Yields the name, as a symbol, of each cookbook depended on by
      # +cookbook_name+ in lexical sort order.
      def each_cookbook_dep(cookbook_name, &block)
        cookbook = cookbook_collection[cookbook_name]
        cookbook.metadata.dependencies.keys.sort.map{|x| x.to_sym}.each(&block)
      end

      # Given a +recipe_name+, finds the file associated with the recipe.
      def resolve_recipe(recipe_name)
        Chef::Recipe.parse_recipe_name(recipe_name, current_cookbook: current_cookbook)
        cookbook_name, recipe_short_name = Chef::Recipe.parse_recipe_name(recipe_name)
        cookbook = cookbook_collection[cookbook_name]
        [ cookbook, cookbook.recipe_filenames_by_name[recipe_short_name] ]
      end

      def compiler_for(cookbook_name)
        cookbook_version = cookbook_collection[cookbook_name]
        @cookbook_version_compilers[cookbook_version] ||= Chef::Cookbook::CookbookProcessor.new(run_context, cookbook_version)
      end

    end

  end
end
