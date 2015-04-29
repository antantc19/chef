#
# Author:: Lamont Granquist (<lamont@chef.io>)
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

# NOTE: This class is not intended for internal use by the chef-client code.  Classes in
# chef-client should still have objects like the node and run_context injected into them
# via their initializers.  This class is still global state and will complicate writing
# unit tests for internal Chef objects.  It is intended to be used only by recipe code.

# NOTE: When adding require lines here you are creating tight coupling on a global that may be
# included in many different situations and ultimately that ends in tears with circular requires.
# Note the way that the run_context, provider_priority_map and resource_priority_map are "dependency
# injected" into this class by other objects and do not reference the class symbols in those files
# directly and we do not need to require those files here.

class Chef
  class << self

    #
    # Public API
    #

    # Get the run context
    #
    # @return [Chef::RunContext] run_context of the chef-client run
    attr_reader :run_context

    # Get the node object
    #
    # @return [Chef::Node] node object of the chef-client run
    def node
      run_context.node
    end

    #
    # Dependency Injection API (Private not Public)
    # [ in the ruby sense these have to be public methods, but they are
    #   *NOT* for public consumption ]
    #

    # Sets the run_context object
    #
    # @api private
    # @param run_context [Chef::RunContext]
    def set_run_context(run_context)
      @run_context = run_context
    end

    # Resets the internal state
    #
    # @api private
    def reset!
      @run_context = nil
    end

    module BackcompatBreak
      # Get the array of providers associated with a resource_name for the current node
      #
      # @param resource_name [Symbol] name of the resource as a symbol
      # @return [Array<Class>] Priority Array of Provider Classes to use for the resource_name on the node
      def get_provider_priority_array(resource_name)
        raise NotImplementedError, "this will no longer work"
      end

      # Get the array of resources associated with a resource_name for the current node
      #
      # @param resource_name [Symbol] name of the resource as a symbol
      # @return [Array<Class>] Priority Array of Resource Classes to use for the resource_name on the node
      def get_resource_priority_array(resource_name)
        raise NotImplementedError, "this will no longer work"
      end

      # Set the array of providers associated with a resource_name for the current node
      #
      # @param resource_name [Symbol] name of the resource as a symbol
      # @param priority_array [Array<Class>] Array of Classes to set as the priority for resource_name on the node
      # @param filter [Hash] Chef::Nodearray-style filter
      # @return [Array<Class>] Modified Priority Array of Provider Classes to use for the resource_name on the node
      def set_provider_priority_array(resource_name, priority_array, *filter)
        raise NotImplementedError, "this will no longer work"
      end

      # Get the array of resources associated with a resource_name for the current node
      #
      # @param resource_name [Symbol] name of the resource as a symbol
      # @param priority_array [Array<Class>] Array of Classes to set as the priority for resource_name on the node
      # @param filter [Hash] Chef::Nodearray-style filter
      # @return [Array<Class>] Modified Priority Array of Resource Classes to use for the resource_name on the node
      def set_resource_priority_array(resource_name, priority_array, *filter)
        raise NotImplementedError, "this will no longer work"
      end

    end
    include BackcompatBreak
  end
end
