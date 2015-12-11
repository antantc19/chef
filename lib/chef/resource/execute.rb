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
      resource_name :execute

      default_action :run

      def initialize(name, run_context=nil)
        super
        # Capture the name before it is coerced to a string
        @command = name
        # TODO remove. Likely holdover from copy/paste from file
        @backup = 5
      end

      # The ResourceGuardInterpreter wraps a resource's guards in another resource.  That inner resource
      # needs to behave differently during (for example) why_run mode, so we flag it here. For why_run mode
      # we still want to execute the guard resource even if we are not executing the wrapping resource.
      # Only execute resources (and subclasses) can be guard interpreters.
      property :is_guard_interpreter, default: false
      property :umask, [ String, Integer ]
      property :command, [ String, Array ], identity: true, name_property: true
      property :creates, String
      property :cwd, String
      property :environment, Hash
      alias :env :environment
      property :group, [ String, Integer ]
      property :live_stream, [ true, false ], default: false
      property :path, Array, coerce: proc { |v| Chef::Log.warn "The 'path' attribute of 'execute' is not used by any provider in Chef 11 or Chef 12. Use 'environment' attribute to configure 'PATH'. This attribute will be removed in Chef 13."; v }
      property :returns, [ Integer, Array ], default: 0
      property :timeout, [ Integer, Float ]
      property :user, [ String, Integer ]
      property :default_guard_interpreter, default: :execute

      def self.set_guard_inherited_attributes(*inherited_attributes)
        @class_inherited_attributes = inherited_attributes
      end

      def self.guard_inherited_attributes(*inherited_attributes)
        # Similar to patterns elsewhere, return attributes from this
        # class and superclasses as a form of inheritance
        ancestor_attributes = []

        if superclass.respond_to?(:guard_inherited_attributes)
          ancestor_attributes = superclass.guard_inherited_attributes
        end

        ancestor_attributes.concat(@class_inherited_attributes ? @class_inherited_attributes : []).uniq
      end

      set_guard_inherited_attributes(
        :cwd,
        :environment,
        :group,
        :user,
        :umask
      )

    end
  end
end
