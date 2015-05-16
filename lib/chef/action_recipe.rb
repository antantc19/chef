#
# Author:: John Keiser (<jkeiser@chef.io>)
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

require 'chef/provider'

class Chef
  # @api private
  class ActionProvider < Chef::Provider
    # Order of include (least priority to most):
    # - Recipe DSL
    # - Resource forwarder (all public+protected methods, not including Object)
    # - ActionRecipe (desired_resource, run_action)
    include Chef::DSL::Recipe

    attr_reader :new_resource
    attr_reader :action
    def run_context
      @run_context ||= super.create_child
    end

    # TODO is it possible we may want to pass a separate run_context besides
    # the one in the resource itself?
    def initialize(new_resource, action)
      # Ensure the resource public methods are included in our class.
      # We do this late bound because a resource may declare an action early
      self.class.include_resource_forwarder
      @new_resource = new_resource
      @action = action
    end

    def run_action
      begin
        send("action_#{action}")
        Chef::Runner.new(run_context).converge
      ensure
        if new_resource.updated_by_last_action? ||
           run_context.resource_collection.any? { |resource| resource.updated_by_last_action? }
          run_context.events.resource_updated(new_resource, action)
          new_resource.updated_by_last_action(true)
        else
          run_context.events.resource_up_to_date(new_resource, action)
        else
      end
    end

    # Class methods
    class<<self
      include Forwardable

      attr_accessor :resource_class

      def action(action, &recipe_block)
        define_method("action_#{action}", &recipe_block)
      end

      def include_resource_forwarder
        include resource_forwarder
      end

      def resource_forwarder
        @resource_forwarder ||=
          Module.new do
            include Forwardable
            def_delegator :new_resource, resource_class.public_instance_methods +
                                         resource_class.protected_instance_methods -
                                         Object.instance_methods
          end
        end
      end
    end
  end
end

# Requiring things at the bottom breaks cycles
require 'chef/chef_class'
