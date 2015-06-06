#
# Author:: Adam Jacob (<adam@opscode.com>)
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
    class User < Chef::Resource
      default_action :create
      allowed_actions :create, :remove, :modify, :manage, :lock, :unlock

      def initialize(name, run_context=nil)
        super
        @supports = {
          :manage_home => false,
          :non_unique => false
        }
      end

      identity_attr :username
      state_attrs :uid, :gid, :home
      property :username, String, name_property: true
      property :comment, String
      property :uid, [ String, Integer ]
      property :gid, [ String, Integer ]
      alias_method :group, :gid
      property :home, String
      property :shell, String
      property :password, String
      property :salt, String
      property :iterations, Integer, default: 27855
      property :system, [ true, false ], default: false
      property :manage_home, [ true, false ], default: false
      property :force, [ true, false ], default: false
      property :non_unique, [ true, false ], default: false
    end
  end
end
