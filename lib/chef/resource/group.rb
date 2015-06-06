#
# Author:: Adam Jacob (<adam@opscode.com>)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2008 OpsCode, Inc.
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

class Chef
  class Resource
    class Group < Chef::Resource
      identity_attr :group_name
      state_attrs :members

      allowed_actions :create, :remove, :modify, :manage
      default_action :create

      identity_attr :group_name
      state_attrs :members
      property :group_name, String, name_property: true
      property :gid, [ String, Integer ]
      property :members, Array, default: lazy { [] }, coerce: { |v| Array(v) }
      alias_method :users, :members
      property :excluded_members, Array, default: lazy { [] }, coerce: { |v| Array(v) }
      property :append, [ true, false ], default: false
      property :system, [ true, false ]
      property :non_unique, [ true, false ], default: false
    end
  end
end
