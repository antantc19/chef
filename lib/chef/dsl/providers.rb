class Chef
  module DSL
    #
    # Methods in this module each return one Provider class (or none if there
    # are no providers associated with the given DSL and action).
    #
    # run_context.provider_classes.service #=> Chef::Provider::RunitService
    #
    module Providers
      module DeclaredProviders
      end
      include DeclaredProviders

      #
      # Platform-specific services with nice priority order
      #
      def service
        return systemd_service if systemd_service

        #
        # Check for the BSDs, Solaris and Mac
        #
        case run_context.node[:os]
        when 'freebsd', 'netbsd'
          freebsd_service
        when 'openbsd'
          openbsd_service
        when 'solaris2'
          solaris_service
        when 'darwin'
          macosx_service
        when 'linux'

          #
          # Different Linuxes are different
          #
          case run_context.node[:platform]
          when 'arch'
            arch_service
          when 'gentoo'
            gentoo_service
          when 'debian'
            # on debian-ish system if an upstart script exists that must win over sysv types
            upstart_service ||
            insserv_service ||
            debian_service  ||
            invokercd_service
          when 'rhel', 'fedora', 'suse'
            insserv_service ||
            redhat_service
          else
            insserv_service ||
            redhat_service
          end

        end ||
        super
      end

      #
      # Platform-specific priority for packages
      #
      def package
        case run_context.node[:os]
        when 'darwin'
          homebrew_package
        end ||
        super
      end

      def self.add_provider(name, priority, &block)
        node_map.set(name, priority: priority, &block)
      end

      private

      # This is the level at which we declare selectors
      def self.node_map
        @node_map ||= {}
      end
    end
  end
end
