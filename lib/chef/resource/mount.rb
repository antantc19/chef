#
# Author:: Joshua Timberman (<joshua@opscode.com>)
# Author:: Tyler Cloke (<tyler@opscode.com>)
# Copyright:: Copyright (c) 2009 Opscode, Inc
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
    class Mount < Chef::Resource
      identity_attr :device
      state_attrs :mount_point, :device_type, :fstype, :username, :password, :domain

      default_action :mount
      allowed_actions :mount, :umount, :remount, :enable, :disable

      def initialize(name, run_context=nil)
        super
        @supports = { :remount => false }
      end

      identity_attr :device
      state_attrs :mount_point, :device_type, :fstype, :username, :password, :domain
      property :mount_point, String, name_property: true
      property :device, String
      property :device_type, is: (RUBY_PLATFORM =~ /solaris/i ? :device : [ :device, :label, :uid ]),
                             coerce: { |v| v.is_a?(String) ? v.to_sym : v },
                             default: :device
      property :fsck_device, String, default: '-'
      property :fstype, String, default: "auto"
      property :options, [ Array ], default: lazy { [ 'defaults' ] }, coerce: { |v| v.is_a?(String) ? v.gsub(/,/, ' ').split(/ /) : v }
      property :dump, [ Integer, false ], default: 0
      property :pass, [ Integer, false ], default: 2
      property :mounted, [ true, false ], default: false
      property :enabled, [ true, false ], default: false
      # TODO "{}" is treated as a get, and this doesn't support that ...
#      property :supports, Hash, default: { remount: false }, coerce: { |v| v.is_a?(Array) ? supports.merge(v.map { |v| [ v, true ] }) : v }
      def supports(args={})
        if args.is_a? Array
          args.each { |arg| @supports[arg] = true }
        elsif args.any?
          @supports = args
        else
          @supports
        end
      end
      property :username, String
      property :password, String
      property :domain, String

      private

      # Used by the AIX provider to set fstype to nil.
      # TODO use property to make nil a valid value for fstype
      def clear_fstype
        @fstype = nil
      end
    end
  end
end
