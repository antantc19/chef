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

require "chef/data_collector/serializers/base"

class Chef
  class DataCollector
    class Serializers
      class RunStart < Base

        attr_reader :run_status

        def initialize(run_status)
          @run_status = run_status
        end

        def message_type
          "run_start"
        end

        def document
          {
            "chef_server_fqdn"  => chef_server_fqdn,
            "entity_uuid"       => node_uuid,
            "id"                => run_status.run_id,
            "message_version"   => "1.0.0",
            "message_type"      => message_type,
            "node_name"         => run_status.node.name,
            "organization_name" => organization,
            "run_id"            => run_status.run_id,
            "source"            => collector_source,
            "start_time"        => run_status.start_time.utc.iso8601
          }
        end
      end
    end
  end
end
