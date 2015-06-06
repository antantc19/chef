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
require 'chef/provider/execute'

class Chef
  class Resource
    class Execute < Chef::Resource

      # The ResourceGuardInterpreter wraps a resource's guards in another resource.  That inner resource
      # needs to behave differently during (for example) why_run mode, so we flag it here. For why_run mode
      # we still want to execute the guard resource even if we are not executing the wrapping resource.
      # Only execute resources (and subclasses) can be guard interpreters.
      attr_accessor :is_guard_interpreter

      default_action :run

      def initialize(name, run_context=nil)
        super
        @backup = 5
        @user = nil
        @default_guard_interpreter = :execute
        @is_guard_interpreter = false
      end

      identity_attr :command
      property :command, [ String, Array ], name_property: true
      property :creates, String
      property :cwd, String
      property :environment, Hash
      property :group, [ String, Integer ]
      property :path, Array
      property :returns, [ Integer, Array ], default: 0
      property :timeout, [ Integer, Float ]
      property :umask, [ String, Integer ]
      property :user, [ String, Integer ]

      alias :env :environment

      def path(*args, &block)
        Chef::Log.warn "'path' attribute of 'execute' is not used by any provider in Chef 11 and Chef 12. Use 'environment' attribute to configure 'PATH'. This attribute will be removed in Chef 13."
        super
      end

      define_class_properties do
        property :guard_inherited_attributes, Array, default: [ :cwd, :environment, :group, :user, :umask ]
      end

      def self.set_guard_inherited_attributes(*attributes)
        guard_inherited_attributes attributes
      end

    end
  end
end
