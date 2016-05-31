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

require "json"
require "securerandom"
require "chef/config"

class Chef
  class DataCollector
    class Serializers
      module Base
        def chef_server_fqdn
          if Chef::Config[:chef_server_url]
            URI(Chef::Config[:chef_server_url]).host
          elsif defined?(node)
            node["fqdn"]
          else
            "localhost"
          end
        end

        private

        def organization
          if solo_run?
            Chef::Config[:data_collector_organization] || "chef_solo"
          else
            if Chef::Config[:chef_server_url]
              if Chef::Config[:chef_server_url] =~ %r{/organizations/(\w+)}
                $1
              else
                "unknown_organization"
              end
            end
          end
        end

        def solo_run?
          Chef::Config[:solo] || Chef::Config[:local_mode]
        end

        def get_metadata
          begin
            metadata = JSON.load(Chef::FileCache.load(metadata_filename))
          rescue Chef::Exceptions::FileNotFound
            metadata = {}
          end
          # Ensure we have a uuid
          unless metadata["uuid_json"]
            metadata["uuid_json"] = SecureRandom.uuid
            Chef::FileCache.store(metadata_filename, metadata.to_json, 0644)
          end
          metadata
        end

        def metadata_filename
          "data_collector_metadata.json"
        end
      end
    end
  end
end
