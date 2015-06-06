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

require 'chef/resource'

class Chef
  class Resource
    class Package < Chef::Resource
      identity_attr :package_name
      state_attrs :version, :options

      default_action :install
      allowed_actions :install, :upgrade, :remove, :purge, :reconfig

      identity_attr :package_name
      state_attrs :version, :options
      property :package_name, [ String, Array ], name_property: true
      property :version, [ String, Array ]
      property :response_file, String
      property :response_file_variables, Hash, default: lazy { {} }
      property :source, String
      property :options, String
      property :timeout, [ String, Integer ]
    end
  end
end
