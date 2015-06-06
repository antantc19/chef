#
# Author:: Adam Jacob (<adam@opscode.com>)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2008 Opscode, Inc.
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

require 'chef/resource/directory'
require 'chef/provider/remote_directory'
require 'chef/mixin/securable'

class Chef
  class Resource
    class RemoteDirectory < Chef::Resource::Directory
      include Chef::Mixin::Securable

      default_action :create
      allowed_actions :create, :create_if_missing, :delete

      identity_attr :path
      state_attrs :files_owner, :files_group, :files_mode
      property :source, String, default: lazy { ::File.basename(path) }
      property :files_backup, [ Integer, false ], default: 5
      property :purge, [ true, false ], default: false
      property :recursive, [ true, false ], default: true
      property :delete, [ true, false ], default: false
      property :overwrite, [ true, false ], default: true
      property :files_group, Chef::Config[:group_valid_regex]
      property :files_owner, Chef::Config[:user_valid_regex]
      if Chef::Platform.windows?
        property :files_mode, /^\d{3,4}$/
      else
        property :files_mode, /^\d{3,4}$/, default: 0644
      end
      property :cookbook, String

      if Chef::Platform.windows?
        # create a second instance of the 'rights' attribute
        rights_attribute(:files_rights)
      end
    end
  end
end
