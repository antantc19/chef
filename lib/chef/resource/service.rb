#
# Author:: AJ Christensen (<aj@hjksolutions.com>)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2008 Opscode, Inc.
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

require 'chef/resource'

class Chef
  class Resource
    class Service < Chef::Resource
      default_action :nothing
      allowed_actions :enable, :disable, :start, :stop, :restart, :reload

      identity_attr :service_name
      state_attrs :enabled, :running
      property :service_name, String, name_property: true
      # regex for match against ps -ef when !supports[:has_status] && status == nil
      property :pattern, String, default: lazy { service_name }
      # command to call to start service
      property :start_command, String
      # command to call to stop service
      property :stop_command, String
      # command to call to get status of service
      property :status_command, String
      # command to call to restart service
      property :restart_command, String
      property :reload_command, String
      # The path to the init script associated with the service. On many
      # distributions this is '/etc/init.d/SERVICE_NAME' by default. In
      # non-standard configurations setting this value will save having to
      # specify overrides for the start_command, stop_command and
      # restart_command attributes.
      property :init_command, String
      # if the service is enabled or not
      property :enabled, [ true, false ]
      # if the service is running or not
      property :running, [ true, false ]
      # Priority arguments can have two forms:
      #
      # - a simple number, in which the default start runlevels get
      #   that as the start value and stop runlevels get 100 - value.
      #
      # - a hash like { 2 => [:start, 20], 3 => [:stop, 55] }, where
      #   the service will be marked as started with priority 20 in
      #   runlevel 2, stopped in 3 with priority 55 and no symlinks or
      #   similar for other runlevels
      #
      property :priority, [ Integer, String, Hash ]
      # timeout only applies to the windows service manager
      property :timeout, Integer
      property :parameters, Hash
      # TODO "{}" is treated as a get, and this doesn't support that ...
#      property :supports, Hash, default: lazy { { :restart => false, :reload => false, :status => false } }, coerce: { |v| v.is_a?(Array) ? supports.merge(v.map { |v| [ v, true ] }) : v }
      def supports(args={})
        if args.is_a? Array
          args.each { |arg| @supports[arg] = true }
        elsif args.any?
          @supports = args
        else
          @supports
        end
      end

    end
  end
end
