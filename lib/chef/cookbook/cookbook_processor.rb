class Chef
  class Cookbook
    class CookbookProcessor
      def initialize(run_context, cookbook_version)
        @run_context = run_context
        @cookbook_version = cookbook_version
      end

      attr_reader :run_context
      attr_reader :cookbook_version

      def compile_libraries
        files_by_segment(:libraries).each do |filename|
          begin
            Chef::Log.debug("Loading cookbook #{name}'s library file: #{filename}")
            Kernel.load(filename)
            events.library_file_loaded(filename)
          rescue Exception => e
            events.library_file_load_failed(filename, e)
            raise
          end
        end
      end

      def compile_attributes
        list_of_attr_files = files_by_segment(:attributes).dup
        if default_file = list_of_attr_files.find { |path| File.basename(path) == "default.rb" }
          list_of_attr_files.delete(default_file)
          list_of_attr_files.shift(default_file)
        end

        list_of_attr_files.each do |filename|
          compile_attribute_file(filename)
        end
      end

      def compile_lwrps
        files_by_segment(:providers).each do |filename|
          compile_lwrp_provider(filename)
        end
        files_by_segment(:resources).each do |filename|
          compile_lwrp_resource(filename)
        end
      end

      def compile_definitions
        files_by_segment(:definitions).each do |filename|
          compile_definition(filename)
        end
      end

      def compile_recipe(recipe_name)
        if run_context.loaded_fully_qualified_recipe?(name, recipe_name)
          Chef::Log.debug("I am not loading #{recipe_name}, because I have already seen it.")
          return false
        end

        run_context.loaded_recipe(name, recipe_name)

        unless cookbook_version.recipe_filenames_by_name.has_key?(recipe_name)
          raise Chef::Exceptions::RecipeNotFound, "could not find recipe #{recipe_name} for cookbook #{name}"
        end

        Chef::Log.debug("Found recipe #{recipe_name} in cookbook #{name}")
        recipe = Chef::Recipe.new(name, recipe_name, run_context)
        recipe_filename = cookbook_version.recipe_filenames_by_name[recipe_name]

        unless recipe_filename
          raise Chef::Exceptions::RecipeNotFound, "could not find #{recipe_name} files for cookbook #{name}"
        end

        recipe.from_file(recipe_filename)
        recipe
      end

      protected

      # Lists the local paths to files in +cookbook+ of type +segment+
      # (attribute, recipe, etc.), sorted lexically.
      def files_by_segment(cookbook, segment)
        cookbook_version.segment_filenames(segment).sort
      end

      def compile_attribute_file(filename)
        Chef::Log.debug("Node #{node.name} loading cookbook #{name}'s attribute file #{filename}")
        attr_file_basename = ::File.basename(filename, ".rb")
        node.include_attribute("#{name}::#{attr_file_basename}")
      rescue Exception => e
        events.attribute_file_load_failed(filename, e)
        raise
      end

      def compile_lwrp_provider(filename)
        Chef::Log.debug("Loading cookbook #{name}'s providers from #{filename}")
        Chef::Provider::LWRPBase.build_from_file(name, filename, self)
        events.lwrp_file_loaded(filename)
      rescue Exception => e
        events.lwrp_file_load_failed(filename, e)
        raise
      end

      def compile_lwrp_resource(filename)
        Chef::Log.debug("Loading cookbook #{name}'s resources from #{filename}")
        Chef::Resource::LWRPBase.build_from_file(name, filename, self)
        events.lwrp_file_loaded(filename)
      rescue Exception => e
        events.lwrp_file_load_failed(filename, e)
        raise
      end

      def compile_definition(filename)
        Chef::Log.debug("Loading cookbook #{name}'s definitions from #{filename}")
        definition_list = Chef::ResourceDefinitionList.new
        definition_list.from_file(filename)
        definitions.merge!(definition_list.defines) do |key, oldval, newval|
          Chef::Log.info("Overriding duplicate definition #{key}, new definition found in #{filename}")
          newval
        end
        events.definition_file_loaded(filename)
      rescue Exception => e
        events.definition_file_load_failed(filename, e)
        raise
      end

      extend Forwardable
      def_delegators :run_context, :events, :node
      def_delegators :cookbook_version, :name

    end
  end
end
