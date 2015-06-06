#
# Author:: Bryan McLellan (btm@loftninjas.org)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2009 Bryan McLellan
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
    class Route < Chef::Resource
      identity_attr :target
      state_attrs :netmask, :gateway

      default_action :add
      allowed_actions :add, :delete

      identity_attr :target
      state_attrs :netmask, :gateway
      property :target, String, name_property: true
      property :networking, String
      property :networking_ipv6, String
      property :hostname, String
      property :domainname, String
      property :domain, String
      property :target, String
      property :netmask, String
      property :gateway, String
      property :metric, Integer
      property :device, String
      property :route_type, [ :host, :net ], default: :net, coerce: proc { |v| arg.kind_of?(String) ? arg.to_sym : arg }
    end
  end
end
