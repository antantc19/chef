#
# Author:: John Keiser (<jkeiser@chef.io>)
# Copyright:: Copyright (c) 2015 Chef Software, Inc.
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
  class Resource
    module TreatPropertyDefaultsAsInitialValues
      def self.included(other)
        other.extend(ClassMethods)
      end

      def initialize(*args, &block)
        super
        self.class.properties_with_defaults.each do |name|
          send(name)
        end
      end

      module ClassMethods
        def property(name, *args, **options, &block)
          super
          if options.has_key?(:default)
            @properties_with_defaults ||= {}
            @properties_with_defaults[name.to_sym] = options[:default]
          end
        end

        def properties_with_defaults
          if superclass.respond_to?(:properties_with_defaults)
            superclass.properties_with_defaults.merge(@properties_with_defaults || {})
          else
            @properties_with_defaults || {}
          end
        end
      end
    end
  end
end
