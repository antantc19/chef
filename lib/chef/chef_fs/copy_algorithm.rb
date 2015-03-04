require 'chef/chef_fs/chef_fs_algorithm'
require 'chef/chef_fs/file_system/default_environment_cannot_be_modified_error'
require 'chef/chef_fs/file_system/operation_failed_error'
require 'chef/chef_fs/file_system/operation_not_allowed_error'

class Chef
  module ChefFS
    class CopyEntries < ChefFSAlgorithm
      def initialize(purge: false, max_recurse_depth: nil, force: nil, diff: true, format_path: nil, **options)
        @max_recurse_depth = max_recurse_depth
        @purge = purge
        @force = force
        @diff = diff
        super(**options)
      end

      attr_reader :max_recurse_depth
      def purge?
        @purge
      end
      def diff?
        @diff
      end

      def options
        @options ||= super.merge({
          max_recurse_depth: max_recurse_depth,
          purge: purge?,
          diff: diff?
        })
      end

      def copy_to(pattern, src_root, dest_root, recurse_depth, options, ui = nil, format_path = nil)
        found_result = false
        error = false
        parallel_do(FileSystem.list_pairs(pattern, src_root, dest_root)) do |src, dest|
          found_result = true
          new_dest_parent = get_or_create_parent(dest, options, ui, format_path)
          child_error = copy_entries(src, dest, new_dest_parent, recurse_depth, options, ui, format_path)
          error ||= child_error
        end
        if !found_result && pattern.exact_path
          error "#{pattern}: No such file or directory on remote or local"
          error = true
        end
        error
      end

      def copy(src_entry, dest_entry, new_dest_parent, recurse_depth=max_recurse_depth)
        # A NOTE about this algorithm:
        # There are cases where this algorithm does too many network requests.
        # knife upload with a specific filename will first check if the file
        # exists (a "dir" in the parent) before deciding whether to POST or
        # PUT it.  If we just tried PUT (or POST) and then tried the other if
        # the conflict failed, we wouldn't need to check existence.
        # On the other hand, we may already have DONE the request, in which
        # case we shouldn't waste time trying PUT if we know the file doesn't
        # exist.
        # Will need to decide how that works with checksums, though.
        error = false
        begin
          dest_path = format_path(dest_entry)
          src_path = format_path(src_entry)
          if !src_entry.exists?
            if purge?
              # If we would not have uploaded it, we will not purge it.
              if src_entry.parent.can_have_child?(dest_entry.name, dest_entry.dir?)
                maybe_converge "Deleted extra entry #{dest_path} (purge is on)" do
                  begin
                    dest_entry.delete(true)
                    true
                  rescue Chef::ChefFS::FileSystem::NotFoundError
                    output "Entry #{dest_path} does not exist. Nothing to do. (purge is on)"
                    false
                  end
                end
              else
                output "Not deleting extra entry #{dest_path} (purge is off)"
              end
            end

          #
          # The destination doesn't exist; copy it over.
          #
          elsif !dest_entry.exists?
            if new_dest_parent.can_have_child?(src_entry.name, src_entry.dir?)
              # If the entry can do a create directly from filesystem, do that.
              # This is used for cookbooks, for example.
              if new_dest_parent.respond_to?(:create_child_from)
                converge ui, options, "Created #{dest_path}" do
                  new_dest_parent.create_child_from(src_entry)
                end
                return
              end

              if src_entry.dir?
                new_dest_dir = nil
                converge "Created #{dest_path}",
                  dry_run_block: proc { new_dest_dir = new_dest_parent.child(src_entry.name) },
                  action:        proc { new_dest_dir = new_dest_parent.create_child_from(src_entry)

                # Directory creation is recursive.
                if recurse_depth != 0
                  parallel_do(src_entry.children) do |src_child|
                    new_dest_child = new_dest_dir.child(src_child.name)
                    child_error = copy_entries(src_child, new_dest_child, new_dest_dir, recurse_depth ? recurse_depth - 1 : recurse_depth, options, ui, format_path)
                    error ||= child_error
                  end
                end
              else
                converge "Created #{dest_path}" do
                  new_dest_parent.create_child(src_entry.name, src_entry.read)
                end
              end
            end

          #
          # Both exist; compare and copy if different.
          #
          else
            # If the entry can do a copy directly, do that.
            if dest_entry.respond_to?(:copy_from)
              if force? || compare(src_entry, dest_entry)[0] == false
                converge "Updated #{dest_path}" do
                  dest_entry.copy_from(src_entry, options)
                end
              end
              return
            end

            # If they are different types, log an error.
            if src_entry.dir?
              if dest_entry.dir?
                # If both are directories, recurse into their children
                if recurse_depth != 0
                  parallel_do(child_pairs(src_entry, dest_entry)) do |src_child, dest_child|
                    child_error = copy_entries(src_child, dest_child, dest_entry, recurse_depth ? recurse_depth - 1 : recurse_depth, options, ui, format_path)
                    error ||= child_error
                  end
                end
              else
                # If they are different types.
                error "File #{src_path} is a directory while file #{dest_path} is a regular file\n"
                return
              end
            else
              if dest_entry.dir?
                error "File #{src_path} is a regular file while file #{dest_path} is a directory\n"
                return
              else

                # Both are files!  Copy them unless we're sure they are the same.
                # TODO the line above is ick, make sure callers don't pass it unless they have to and get rid of == false ...
                if diff? == false
                  should_copy = false
                elsif force?
                  should_copy = true
                  src_value = nil
                else
                  are_same, src_value, _dest_value = compare(src_entry, dest_entry)
                  should_copy = !are_same
                end
                if should_copy
                  converge "Updated #{dest_path}" do
                    src_value = src_entry.read if src_value.nil?
                    dest_entry.write(src_value)
                  end
                end
              end
            end
          end
        rescue FileSystem::DefaultEnvironmentCannotBeModifiedError => e
          warn "#{format_path.call(e.entry)} #{e.reason}."
        rescue FileSystem::OperationFailedError => e
          error "#{format_path.call(e.entry)} failed to #{e.operation}: #{e.message}"
          error = true
        rescue FileSystem::OperationNotAllowedError => e
          error "#{format_path.call(e.entry)} #{e.reason}."
          error = true
        end
        error
      end

      def get_or_create_parent(entry)
        parent = entry.parent
        if parent && !parent.exists?
          parent_parent = get_or_create_parent(parent)
          converge "Created #{parent_path}" do
            parent_parent.create_child(parent.name, nil)
          end
        else
          parent
        end
      end
    end
  end
end
