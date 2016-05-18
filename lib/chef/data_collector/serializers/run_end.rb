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
      class RunEnd < Base
        attr_reader :error_descriptions
        attr_reader :expanded_run_list
        attr_reader :run_status
        attr_reader :status
        attr_reader :total_resource_count
        attr_reader :updated_resources

        def initialize(opts)
          @error_descriptions   = opts[:error_descriptions]
          @expanded_run_list    = opts[:expanded_run_list]
          @run_status           = opts[:run_status]
          @total_resource_count = opts[:total_resource_count]
          @updated_resources    = opts[:updated_resources]
          @status               = opts[:status]
        end

        def message_type
          "run_converge"
        end

        def document
          document = {
            "chef_server_fqdn"       => chef_server_fqdn,
            "entity_uuid"            => node_uuid,
            "expanded_run_list"      => expanded_run_list,
            "id"                     => run_status.run_id,
            "message_version"        => "1.0.0",
            "message_type"           => message_type,
            "node_name"              => run_status.node.name,
            "organization_name"      => organization,
            "resources"              => updated_resources.map(&:for_json),
            "run_id"                 => run_status.run_id,
            "run_list"               => run_status.node.run_list.for_json,
            "start_time"             => run_status.start_time.utc.iso8601,
            "end_time"               => run_status.end_time.utc.iso8601,
            "source"                 => collector_source,
            "status"                 => status,
            "total_resource_count"   => total_resource_count,
            "updated_resource_count" => updated_resources.count
          }

          document["error"] = formatted_exception if run_status.exception

          document
        end

        def formatted_exception
          {
            "class"       => run_status.exception.class,
            "message"     => run_status.exception.message,
            "backtrace"   => run_status.exception.backtrace,
            "description" => error_descriptions
          }
        end
      end
    end
  end
end
