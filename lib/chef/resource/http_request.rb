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
require 'chef/provider/http_request'

class Chef
  class Resource
    class HttpRequest < Chef::Resource

      default_action :get
      allowed_actions :get, :put, :post, :delete, :head, :options

      identity_attr :url
      property :message, name_property: true, coerce: proc { |v=nil, &block| v || block }
      property :url, String
      property :headers, Hash, default: lazy { {} }
    end
  end
end
