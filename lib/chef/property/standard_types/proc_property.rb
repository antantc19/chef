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

class Chef
  class Property
    module StandardTypes
      class ProcProperty < Property
        # "is" defaults to `Proc` (we validate that it is a Proc)
        def initialize(is: Proc, **options)
          super
        end

        # Allow the
        def emit_dsl
          # We don't create the getter/setter if it's a custom property; we will
          # be using the existing getter/setter to manipulate it instead.
          return if !instance_variable_name

          # We prefer this form because the property name won't show up in the
          # stack trace if you use `define_method`.
          declared_in.class_eval <<-EOM, __FILE__, __LINE__+1
            def #{name}(value=NOT_PASSED, &block)
              raise ArgumentError, "Cannot specify both value and block when setting #{name}" if block && value != NOT_PASSED
              value = block if block
              self.class.properties[#{name.inspect}].call(self, value)
            end
            def #{name}=(value)
              self.class.properties[#{name.inspect}].set(self, value)
            end
          EOM
        rescue SyntaxError
          # If the name is not a valid ruby name, we use define_method.
          declared_in.define_method(name) do |value=NOT_PASSED|
            raise ArgumentError, "Cannot specify both value and block when setting #{name}" if block && value != NOT_PASSED
            value = block if block
            self.class.properties[name].call(self, value)
          end
          declared_in.define_method("#{name}=") do |value|
            self.class.properties[name].set(self, value)
          end
        end
      end
    end
  end
end
