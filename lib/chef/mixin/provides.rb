
require 'chef/mixin/descendants_tracker'
require 'set'

class Chef
  module Mixin
    #
    # Lets objects cooperate to create a "named provider module," allowing many
    # Resources / Providers / what have you to say "I would like to handle this
    # DSL, but only on OS X / Linux / etc."
    #
    module Provides
      #
      # The DSL module we provide DSL to.
      #
      # @return [DSLModule] The DSL module we provide DSL to.
      #
      def provides_dsl_module
        raise NotImplementedError, "#{self.class}.dsl_module"
      end

      #
      # Mark this resource as a provider for the given DSL.
      #
      # @param short_name [Symbol] The name of the DSL, e.g. `:file`
      # @param os [String, Array[String]] The operating system on which you
      #   provide the DSL. Corresponds to `node[:os]`. May
      #   include positive matches ('ubuntu'), negative matches ('!windows') or
      #   :all.
      # @param platform [String, Array[String]] The platform on which you
      #   provide the DSL. Corresponds to `node[:platform]`. May
      #   include positive matches ('ubuntu'), negative matches ('!windows') or
      #   :all.
      # @param platform_family [String, Array[String]] The platform family on
      #   which you provide the DSL. Corresponds to `node[:platform_family]`. May
      #   include positive matches ('ubuntu'), negative matches ('!windows') or
      #   :all.
      #
      def provides(short_name, os: nil, platform: nil, platform_family: nil, &block)
        short_name = short_name.to_sym
        provides_dsl_module.node_map.set(short_name, self, opts, &block)

        provides_dsl_module.module_eval <<-EOM, __FILE__, __LINE__+1
          def #{name}
            provides_dsl_module.node_map.get(short_name, run_context.node)
          end
        EOM
      end

      def provides_nothing
        provides_dsl_module.node_map.remove_if { |name, value, *other| value == self }
      end

      module Deprecated
        include Chef::Mixin::DescendantsTracker

        def node_map(warn: true)
          Chef::Log.deprecation "Referencing node_map on #{self.class} is deprecated and will stop working in a future major version."
          @node_map ||= Chef::NodeMap.new
        end

        # Check whether this resource provides the resource_name DSL for the given
        # node
        def provides?(node, resource_name)
          node_map(warn: false).get(node, resource_name)
        end

        def provides(short_name, platform: nil, os: nil, platform_family: nil,
                     on_platform: nil, on_platforms: nil,
                     &block)
          if !short_name.kind_of?(Symbol)
            # YAGNI: this is probably completely unnecessary and can be removed?
            Chef::Log.deprecation "Passing a non-Symbol to Chef::Resource#provides will be removed"
            if short_name.kind_of?(String)
              short_name.downcase!
              short_name.gsub!(/\s/, "_")
            end
            short_name = short_name.to_sym
          end

          if on_platform
            Chef::Log.deprecation "The #{key} option to provides has been deprecated"
          end
          if on_platforms
            Chef::Log.deprecation "The #{key} option to provides has been deprecated"
          end

          super(short_name, os: os, platform_family: platform_family,
                platform: platform || on_platform || on_platforms)

          node_map.set(short_name, true, opts, &block)
        end

        def provides_nothing
          node_map(warn: false).clear
          super
        end
      end
      prepend Deprecated
    end
  end
end
