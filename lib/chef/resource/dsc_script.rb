#
# Author:: Adam Edwards (<adamed@getchef.com>)
# Copyright:: Copyright (c) 2014 Chef Software, Inc.
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

require 'chef/exceptions'

class Chef
  class Resource
    class DscScript < Chef::Resource

      provides :dsc_script, os: "windows"

      default_action :run

      property :code, String, callbacks: {
        "Only one of 'code' and 'command' properties may be specified"            => proc { |arg| !command },
        "Only one of 'code' and 'configuration_name' properties may be specified" => proc { |arg| !configuration_name },
      }
      property :configuration_name, String, callbacks: {
        "Only one of 'code' and 'configuration_name' properties may be specified" => proc { |arg| !code },
      }
      property :command, String, callbacks: {
        "Only one of 'code' and 'command' properties may be specified"            => proc { |arg| !code },
      }
      property :configuration_data, String, callbacks: {
        "Only one of 'configuration_data' and 'configuration_data_script' properties may be specified" => proc { |arg| !configuration_data_script },
      }
      property :configuration_data_script, String, callbacks: {
        "Only one of 'configuration_data' and 'configuration_data_script' properties may be specified" => proc { |arg| !configuration_data },
      }

      property :flags, Hash
      property :cwd, String
      property :environment, Hash
      property :timeout, Integer
      property :imports, Hash, lazy { {} }

      def imports(module_name=nil, *args)
        if module_name
          if args.length == 0
            imports[module_name] << '*'
          else
            imports[module_name].push(*args)
          end
        else
          super
        end
      end
    end
  end
end
