#
# Author:: Adam Leff (<adamleff@chef.io)
# Author:: Ryan Cragun (<ryan@chef.io>)
#
# Copyright:: Copyright 2012-2016, Chef Software Inc.
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

require "securerandom"
require "chef/data_collector/serializers/base"

class Chef
  class DataCollector
    class Serializers
      class NodeUpdate < Base

        attr_reader :run_status

        def initialize(run_status)
          @run_status = run_status
        end

        def message_type
          "action"
        end

        def node
          run_status.node
        end

        def document
          {
            "entity_name"       => node.name,
            "entity_type"       => "node",
            "entity_uuid"       => node_uuid,
            "id"                => SecureRandom.uuid,
            "message_version"   => "1.0.0",
            "message_type"      => message_type,
            "organization_name" => organization,
            "recorded_at"       => Time.now.utc.iso8601,
            "remote_hostname"   => node["fqdn"],
            "requestor_name"    => node.name,
            "requestor_type"    => "client",
            "service_hostname"  => chef_server_fqdn,
            "source"            => collector_source,
            "task"              => "update",
            "user_agent"        => Chef::HTTP::HTTPRequest::DEFAULT_UA,
            "data"              => node
          }
        end
      end
    end
  end
end
