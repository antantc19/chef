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

require 'chef/chef_fs/file_system/cookbooks_dir'

class Chef
  module ChefFS
    module FileSystem
      # Represents top-level /cookbooks.
      # Directories ending with `-<version>` are assumed to be versioned cookbooks.
      # New cookbooks uploaded will use Chef::Config.versioned_cookbooks to
      # decide how to create new cookbooks.
      class CookbooksDirUnversioned < CookbooksDir

        def children
          @children ||= begin
            result = root.get_json(api_path).keys.map { |cookbook_name| CookbookDir.new(cookbook_name, self, :exists => true) }
            result.sort_by(&:name)
          end
        end

        def upload_cookbook_from(other, options = {})
          root.versioned_cookbooks ? upload_versioned_cookbook(other, options) : upload_unversioned_cookbook(other, options)
          cookbook_to_upload = other.chef_object
          cookbook_to_upload.freeze_version if options[:freeze]
          uploader = Chef::CookbookUploader.new(cookbook_to_upload, :force => options[:force], :rest => root.chef_rest)

          with_actual_cookbooks_dir(other.parent.file_path) do
            uploader.upload_cookbooks
          end
        end

        def can_have_child?(name, is_dir)
          is_dir
        end
      end
    end
  end
end
