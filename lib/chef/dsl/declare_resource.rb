#--
# Author:: Adam Jacob (<adam@opscode.com>)
# Author:: Christopher Walters (<cw@opscode.com>)
# Copyright:: Copyright (c) 2008, 2009-2015 Chef Software, Inc.
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
  module DSL
    module DeclareResource
      #
      # Lookup a resource in the resource collection by name and remove it.  This
      # does not raise Chef::Exceptions::ResourceNotFound.
      #
      # @param type [Symbol] The type of resource (e.g. `:file` or `:package`)
      # @param name [String] The name of the resource (e.g. '/x/y.txt' or 'apache2')
      # @param run_context [Chef::RunContext] the run_context of the resource collection to operate on
      #
      # @return [Chef::Resource] The resource
      #
      # @example
      #   remove_resource(:template, '/x/y.txy')
      #
      def remove_resource!(type, name, run_context: self.run_context)
        resource = edit_resource(type, name, run_context: run_context)
        #run_context.resource_collection.delete
        #run_context.resource_collection.resource_list.delete
        #run_context.resource_collection.resource_set.delete
        pp run_context.resource_collection
        pp run_context.resource_collection.resource_set.resources_by_key  # Hash
        pp run_context.resource_collection.resource_list.resources  # Array
      end

      #
      # Lookup a resource in the resource collection by name and remove it.  This
      # does not raise Chef::Exceptions::ResourceNotFound.
      #
      # @param type [Symbol] The type of resource (e.g. `:file` or `:package`)
      # @param name [String] The name of the resource (e.g. '/x/y.txt' or 'apache2')
      # @param run_context [Chef::RunContext] the run_context of the resource collection to operate on
      #
      # @return [Chef::Resource] The resource
      #
      # @example
      #   remove_resource(:template, '/x/y.txy')
      #
      def remove_resource(type, name, run_context: self.run_context)
        remove_resource!(type, name, run_context: run_context)
      rescue Chef::Exceptions::ResourceNotFound
        # ignore
      end

      #
      # Lookup a resource in the resource collection by name.  If it exists,
      # return it.  If it does not exist, create it.  This is a useful function
      # for accumulator patterns.
      #
      # @param type [Symbol] The type of resource (e.g. `:file` or `:package`)
      # @param name [String] The name of the resource (e.g. '/x/y.txt' or 'apache2')
      # @param created_at [String] The caller of the resource.  Use `caller[0]`
      #   to get the caller of your function.  Defaults to the caller of this
      #   function.
      # @param run_context [Chef::RunContext] the run_context of the resource collection to operate on
      # @param resource_attrs_block A block that lets you set attributes of the
      #   resource (it is instance_eval'd on the resource instance).
      #
      # @return [Chef::Resource] The resource
      #
      # @example
      #   resource = declare_or_edit_resource(:template, '/x/y.txy') do
      #     source "y.txy.erb"
      #     variables {}
      #   end
      #   resource.variables.merge!({ home: "/home/klowns"  })
      #
      def declare_or_edit_resource(type, name, created_at=nil, run_context: self.run_context, &resource_attrs_block)
        begin
          resource = edit_resource(type, name, run_context: run_context, &resource_attrs_block)
          return resource
        rescue Chef::Exceptions::ResourceNotFound
        end
        declare_resource(type, name, created_at, run_context, &resource_attrs_block)
      end

      #
      # Lookup a resource in the resource collection by name and return it.  This is
      # functionally identical to "chef_rewind", plus you can pass it a different
      # run_context if you like.  May raise Chef::Exceptions::ResourceNotFound.
      #
      # @param type [Symbol] The type of resource (e.g. `:file` or `:package`)
      # @param name [String] The name of the resource (e.g. '/x/y.txt' or 'apache2')
      # @param run_context [Chef::RunContext] the run_context of the resource collection to operate on
      # @param resource_attrs_block A block that lets you set attributes of the
      #   resource (it is instance_eval'd on the resource instance).
      #
      # @return [Chef::Resource] The resource
      #
      # @example
      #   edit_resource(:template, '/x/y.txy') do
      #     cookbook_name: cookbook_name
      #   end
      #
      def edit_resource(type, name, run_context: self.run_context, &resource_attrs_block)
        resource = run_context.resource_collection.find(type => name)
        return resource
      end

      #
      # Instantiates a resource (via #build_resource), then adds it to the
      # resource collection. Note that resource classes are looked up directly,
      # so this will create the resource you intended even if the method name
      # corresponding to that resource has been overridden.
      #
      # @param type [Symbol] The type of resource (e.g. `:file` or `:package`)
      # @param name [String] The name of the resource (e.g. '/x/y.txt' or 'apache2')
      # @param created_at [String] The caller of the resource.  Use `caller[0]`
      #   to get the caller of your function.  Defaults to the caller of this
      #   function.
      # @param run_context [Chef::RunContext] the run_context of the resource collection to operate on
      # @param resource_attrs_block A block that lets you set attributes of the
      #   resource (it is instance_eval'd on the resource instance).
      #
      # @return [Chef::Resource] The new resource.
      #
      # @example
      #   declare_resource(:file, '/x/y.txy', caller[0]) do
      #     action :delete
      #   end
      #   # Equivalent to
      #   file '/x/y.txt' do
      #     action :delete
      #   end
      #
      def declare_resource(type, name, created_at=nil, run_context: self.run_context, create_if_missing: false, &resource_attrs_block)
        created_at ||= caller[0]

        if create_if_missing
          Chef::Log.deprecation "build_resource with a create_if_missing flag is deprecated, use declare_or_edit_resource instead"
          # midly goofy since we call this only to re-call ourselves, but that's why its deprecated...
          return declare_or_edit_resource(type, name, created_at, run_context: run_context, &resource_attrs_block)
        end

        resource = build_resource(type, name, created_at, &resource_attrs_block)

        run_context.resource_collection.insert(resource, resource_type: type, instance_name: name)
        resource
      end

      #
      # Instantiate a resource of the given +type+ with the given +name+ and
      # attributes as given in the +resource_attrs_block+.
      #
      # The resource is NOT added to the resource collection.
      #
      # @param type [Symbol] The type of resource (e.g. `:file` or `:package`)
      # @param name [String] The name of the resource (e.g. '/x/y.txt' or 'apache2')
      # @param created_at [String] The caller of the resource.  Use `caller[0]`
      #   to get the caller of your function.  Defaults to the caller of this
      #   function.
      # @param run_context [Chef::RunContext] the run_context of the resource collection to operate on
      # @param resource_attrs_block A block that lets you set attributes of the
      #   resource (it is instance_eval'd on the resource instance).
      #
      # @return [Chef::Resource] The new resource.
      #
      # @example
      #   build_resource(:file, '/x/y.txy', caller[0]) do
      #     action :delete
      #   end
      #
      def build_resource(type, name, created_at=nil, run_context: self.run_context, &resource_attrs_block)
        created_at ||= caller[0]

        # this needs to be lazy in order to avoid circular dependencies since ResourceBuilder
        # will requires the entire provider+resolver universe
        Thread.exclusive do
          require 'chef/resource_builder' unless defined?(Chef::ResourceBuilder)
        end

        Chef::ResourceBuilder.new(
          type:                type,
          name:                name,
          created_at:          created_at,
          params:              @params,
          run_context:         run_context,
          cookbook_name:       cookbook_name,
          recipe_name:         recipe_name,
          enclosing_provider:  self.is_a?(Chef::Provider) ? self :  nil
        ).build(&resource_attrs_block)
      end
    end
  end
end
