require 'chef/dsl/dsl_module'

class Chef
  module DSL
    #
    # Methods in this module each return one Resource class (or none if there
    # are no resources associated with the given DSL).
    #
    # run_context.resource_classes.service #=> Chef::Resource::RunitService
    #
    module Resources
      module DeclaredResources
      end
      include DeclaredResources

      def self.node_map
        @node_map ||= {}
      end

      #
      # Ensures that any resource classes added here are reflected in resource
      # creation DSL.
      #
      module ReflectChangesInResourceCreation
        # When resources are added here, we add the corresponding method to ResourceCreation
        def method_added(name)
          Chef::DSL::ResourceCreation::AutomaticResourceCreation.module_eval <<-EOM, __FILE__, __LINE__+1
            def #{name}(name, &block)
              declare_resource(#{name.inspect}, name, caller[0], &block)
            end
          EOM
        end

        def method_removed(name)
          Chef::DSL::ResourceCreation::AutomaticResourceCreation.remove_method(name)
        end
      end

      module DeclaredResources
        extend ReflectChangesInResourceCreation
      end

      extend ReflectChangesInResourceCreation


      module Deprecated
        include Chef::Mixin::ConvertToClassName

        #
        # Handles the deprecated search for Chef::Resource::Blah
        # and for scanning all resources that have `provides?` but
        # do not have `provides`.
        #
        def find_deprecated_resource_classes(name)
          class_name = convert_to_class_name(method_symbol)
          if Chef::Resource.const_defined?(class_name)
            Chef::Log.warn("Class Chef::Resource::#{class_name} does not declare `provides #{resource.inspect}`.")
            Chef::Log.warn("This will no longer work in Chef 13: you must use `provides` to provide DSL.")
            chef_resource_class << Chef::Resource.const_get(class_name)
            provider.provides chef_resource_class
          end
          providers = Chef::Resource.descendants.select { |r| r.provides?(node, method_symbol) }
          if !providers.empty?
            resource_classes += providers
            Chef::Log.warn("#{resource_class} is marked as providing DSL #{method_symbol}, but provides #{method_symbol.inspect} was never called!")
            Chef::Log.warn("In Chef 13, this will break: you must call provides to mark the names you provide, even if you also override provides? yourself.")
            providers.each do |provider|
              provider.provides(name) { provider.provides?(run_context.node, name) } unless chef_resource_class == provider
            end
            Chef::DSL::Resources.add_resource_dsl(method_symbol)
          end

          if Chef::Resource.const_defined?(class_name)
          end
          if
        end
        def method_missing(name, *args, &block)
          if find_deprecated_reosurce_classes(name)
            public_send(name, *args, &block)
          end
        end
      end
      include Deprecated

    end
  end
end
