#
# Author:: Jason K. Jackson (jasonjackson@gmail.com)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2009 Jason K. Jackson
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
    class Ifconfig < Chef::Resource

      default_action :add
      allowed_actions :add, :delete, :enable, :disable

      identity_attr :device
      state_attrs :inet_addr, :mask
      property :target, String, name_property: true
      property :device, String
      property :hwaddr, String
      property :inet_addr, String
      property :bcast, String
      property :mask, String
      property :mtu, String
      property :metric, String
      property :onboot, String
      property :network, String
      property :bootproto, String
      property :onparent, String
    end
  end
end
