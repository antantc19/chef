#
# Author:: Joe Williams (<joe@joetify.com>)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2009 Joe Williams
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
require 'chef/provider/erl_call'

class Chef
  class Resource
    class ErlCall < Chef::Resource

      # erl_call : http://erlang.org/doc/man/erl_call.html

      default_action :run
      identity_attr :code

      # your erlang code goes here
      property :code, String, default: "q()."
      # cookie of the erlang node
      property :cookie, String
      # if you want to have a distributed erlang node
      property :distributed, [ true, false ], default: false
      # type of erlang hostname name or sname
      property :name_type, String, "sname"
      # the erlang node hostname
      property :node_name, String, "chef@localhost"

    end
  end
end
