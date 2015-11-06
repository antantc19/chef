#
# Author:: John Keiser (<jkeiser@chef.io)
# Copyright:: Copyright (c) 2015 Opscode, Inc.
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

require 'chef/mixin/properties'
require 'chef/property/standard_types/proc_property'

class Chef
  class Property
    module StandardTypes
      include Chef::Mixin::Properties
      Boolean = property_type(is: [ true, false ], default: false)

      #
      # Treat `property :x, Proc, ...` the same as `property :x, ProcProperty, ...`
      # so that you get the nicer property DSL letting you say x { ... }
      # instead of just x proc { ... }
      #
      def property(name, type=NOT_PASSED, **options)
        if type != NOT_PASSED && type.is_a?(Class)
          if type <= Proc
            type = ProcProperty
          end
        end
        super
      end
    end
  end
end
