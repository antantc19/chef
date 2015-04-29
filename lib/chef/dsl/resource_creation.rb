require 'chef/dsl/dsl_module'

class Chef
  module DSL
    #
    # Methods in this module each return one Resource class (or none if there
    # are no resources associated with the given DSL).
    #
    # run_context.resource_classes.service #=> Chef::Resource::RunitService
    #
    module ResourceCreation
      module AutomaticResourceCreation
      end
      include AutomaticResourceCreation

      module Deprecated
        def method_missing(name, *args, &block)
          if Chef::DSL::Resources.find_deprecated_classes(name)
            public_send(name, *args, &block)
          end
        end
      end
      include Deprecated
    end
  end
end
