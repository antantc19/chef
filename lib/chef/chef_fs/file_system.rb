#
# Author:: John Keiser (<jkeiser@opscode.com>)
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

require 'chef/chef_fs/path_utils'
require 'chef/chef_fs/parallelizer'
require 'chef/chef_fs/copy_algorithm'

class Chef
  module ChefFS
    module FileSystem
      # Returns a list of all things under (and including) this entry that match the
      # given pattern.
      #
      # ==== Attributes
      #
      # * +root+ - Entry to start listing under
      # * +pattern+ - Chef::ChefFS::FilePattern to match children under
      #
      def self.list(root, pattern)
        Lister.new(root, pattern)
      end

      class Lister
        include Enumerable

        def initialize(root, pattern)
          @root = root
          @pattern = pattern
        end

        attr_reader :root
        attr_reader :pattern

        def each(&block)
          list_from(root, &block)
        end

        def list_from(entry, &block)
          # Include self in results if it matches
          if pattern.match?(entry.path)
            block.call(entry)
          end

          if pattern.could_match_children?(entry.path)
            # If it's possible that our children could match, descend in and add matches.
            exact_child_name = pattern.exact_child_name_under(entry.path)

            # If we've got an exact name, don't bother listing children; just grab the
            # child with the given name.
            if exact_child_name
              exact_child = entry.child(exact_child_name)
              if exact_child
                list_from(exact_child, &block)
              end

            # Otherwise, go through all children and find any matches
            elsif entry.dir?
              results = Parallelizer::parallelize(entry.children) { |child| Chef::ChefFS::FileSystem.list(child, pattern) }
              results.flatten(1).each(&block)
            end
          end
        end
      end

      # Resolve the given path against the entry, returning
      # the entry at the end of the path.
      #
      # ==== Attributes
      #
      # * +entry+ - the entry to start looking under.  Relative
      #   paths will be resolved from here.
      # * +path+ - the path to resolve.  If it starts with +/+,
      #   the path will be resolved starting from +entry.root+.
      #
      # ==== Examples
      #
      #     Chef::ChefFS::FileSystem.resolve_path(root_path, 'cookbooks/java/recipes/default.rb')
      #
      def self.resolve_path(entry, path)
        return entry if path.length == 0
        return resolve_path(entry.root, path) if path[0,1] == "/" && entry.root != entry
        if path[0,1] == "/"
          path = path[1,path.length-1]
        end

        result = entry
        Chef::ChefFS::PathUtils::split(path).each do |part|
          result = result.child(part)
        end
        result
      end

      # Copy everything matching the given pattern from src to dest.
      #
      # After this method completes, everything in dest matching the
      # given pattern will look identical to src.
      #
      # ==== Attributes
      #
      # * +pattern+ - Chef::ChefFS::FilePattern to match children under
      # * +src_root+ - the root from which things will be copied
      # * +dest_root+ - the root to which things will be copied
      # * +recurse_depth+ - the maximum depth to copy things. +nil+
      #   means infinite depth.  0 means no recursion.
      # * +options+ - hash of options:
      #   - +purge+ - if +true+, items in +dest+ that are not in +src+
      #   will be deleted from +dest+.  If +false+, these items will
      #   be left alone.
      #   - +force+ - if +true+, matching files are always copied from
      #     +src+ to +dest+.  If +false+, they will only be copied if
      #     actually different (which will take time to determine).
      #   - +dry_run+ - if +true+, action will not actually be taken;
      #     things will be printed out instead.
      #
      # ==== Examples
      #
      #     Chef::ChefFS::FileSystem.copy_to(FilePattern.new('/cookbooks'),
      #       chef_fs, local_fs, nil, true) do |message|
      #       puts message
      #     end
      #
      def self.copy_to(pattern, src_root, dest_root, recurse_depth, options, ui = nil, format_path = nil)
        copier = CopyEntries.new(recurse_depth: recurse_depth, ui: ui, format_path: format_path, **options)
        copier.copy_to(pattern, src_root, dest_root)
      end

      # Yield entries for children that are in either +a_root+ or +b_root+, with
      # matching pairs matched up.
      #
      # ==== Yields
      #
      # Yields matching entries in pairs:
      #
      #    [ a_entry, b_entry ]
      #
      # ==== Example
      #
      #     Chef::ChefFS::FileSystem.list_pairs(FilePattern.new('**x.txt', a_root, b_root)).each do |a, b|
      #       ...
      #     end
      #
      def self.list_pairs(pattern, a_root, b_root)
        PairLister.new(pattern, a_root, b_root)
      end

      class PairLister
        include Enumerable

        def initialize(pattern, a_root, b_root)
          @pattern = pattern
          @a_root = a_root
          @b_root = b_root
        end

        attr_reader :pattern
        attr_reader :a_root
        attr_reader :b_root

        def each
          # Make sure everything on the server is also on the filesystem, and diff
          found_paths = Set.new
          Chef::ChefFS::FileSystem.list(a_root, pattern).each do |a|
            found_paths << a.path
            b = Chef::ChefFS::FileSystem.resolve_path(b_root, a.path)
            yield [ a, b ]
          end

          # Check the outer regex pattern to see if it matches anything on the
          # filesystem that isn't on the server
          Chef::ChefFS::FileSystem.list(b_root, pattern).each do |b|
            if !found_paths.include?(b.path)
              a = Chef::ChefFS::FileSystem.resolve_path(a_root, b.path)
              yield [ a, b ]
            end
          end
        end
      end

      # Get entries for children of either a or b, with matching pairs matched up.
      #
      # ==== Returns
      #
      # An array of child pairs.
      #
      #     [ [ a_child, b_child ], ... ]
      #
      # If a child is only in a or only in b, the other child entry will be
      # retrieved by name (and will most likely be a "nonexistent child").
      #
      # ==== Example
      #
      #     Chef::ChefFS::FileSystem.child_pairs(a, b).length
      #
      def self.child_pairs(a, b)
        # If both are directories, recurse into them and diff the children instead of returning ourselves.
        result = []
        a_children_names = Set.new
        a.children.each do |a_child|
          a_children_names << a_child.name
          result << [ a_child, b.child(a_child.name) ]
        end

        # Check b for children that aren't in a
        b.children.each do |b_child|
          if !a_children_names.include?(b_child.name)
            result << [ a.child(b_child.name), b_child ]
          end
        end
        result
      end

      def self.compare(a, b)
        are_same, a_value, b_value = a.compare_to(b)
        if are_same.nil?
          are_same, b_value, a_value = b.compare_to(a)
        end
        if are_same.nil?
          # TODO these reads can be parallelized
          begin
            a_value = a.read if a_value.nil?
          rescue Chef::ChefFS::FileSystem::NotFoundError
            a_value = :none
          end
          begin
            b_value = b.read if b_value.nil?
          rescue Chef::ChefFS::FileSystem::NotFoundError
            b_value = :none
          end
          are_same = (a_value == b_value)
        end
        [ are_same, a_value, b_value ]
      end
    end
  end
end
