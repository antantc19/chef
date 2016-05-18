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

require 'json'
require 'securerandom'

class Chef
  class DataCollector
    class Serializers
      class Base
        def document
          raise "#{self.class} does not implement the #document method, which should return a hash of data to send"
        end

        def message_type
          raise "#{self.class} does not implement the #message_type method, which return a string containing the message type"
        end

        def to_json
          document.to_json
        end

        def chef_server_fqdn
          return URI(Chef::Config[:chef_server_url]).host unless Chef::Config[:chef_server_url].nil?
          return "localhost" unless defined?(run_status)

          run_status.node["fqdn"] 
        end

        def organization
          solo_run? ? data_collector_organization : chef_server_organization
        end

        def data_collector_organization
          Chef::Config[:data_collector_organization] || "chef_solo"
        end

        def chef_server_organization
          return nil unless Chef::Config[:chef_server_url]

          Chef::Config[:chef_server_url].match(%r(/organizations/(\w+))).nil? ? "unknown_organization" : $1
        end

        def collector_source
          solo_run? ? "chef_solo" : "chef_client"
        end

        def solo_run?
          Chef::Config[:solo] || Chef::Config[:local_mode]
        end

        def node_uuid
          read_node_uuid || generate_node_uuid
        end

        def generate_node_uuid
          uuid = SecureRandom.uuid
          update_metadata("node_uuid", uuid)

          uuid
        end

        def read_node_uuid
          metadata["node_uuid"]
        end

        def metadata
          @metadata ||= JSON.load(Chef::FileCache.load(metadata_filename))
        rescue Chef::Exceptions::FileNotFound
          @metadata = {}
        end

        def update_metadata(key, value)
          metadata[key] = value
          Chef::FileCache.store(metadata_filename, metadata.to_json, 0644)
        end

        def metadata_filename
          "data_collector_metadata.json"
        end
      end
    end
  end
end
