#
# Author:: Adam Jacob (<adam@opscode.com>)
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Copyright:: Copyright (c) 2008, 2011 Opscode, Inc.
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
require 'chef/platform'
require 'chef/provider/file'
require 'chef/mixin/securable'

class Chef
  class Resource
    class File < Chef::Resource
      include Chef::Mixin::Securable

      identity_attr :path

      # Configure state attributes for windows or unix.
      # TODO: would be better to have separate subclasses for each and use
      # platform-specific resources

      def self.use_windows_state_attrs!
        # Chef's implementation of windows file security mostly just abstracts
        # the "basic" security settings on windows, but like everything else in
        # windows there are more options if you click the "advanced" button.
        # It's possible that running chef may remove "advanced" permissions (or
        # set them, if the user specifies a hex integer instead of the
        # shortcuts provided); therefore, when describing windows access
        # controls, chef must report the before/after in terms of "advanced"
        # permissions or else you may not see a change that occurred.
        #
        # This means that we can't describe file security settings with the
        # same data structures used by the resource to set them, so we need a
        # separate place to store this information.
        state_attrs :checksum, :expanded_rights, :expanded_deny_rights, :inherits
      end

      def self.use_unix_state_attrs!
        state_attrs :checksum, :owner, :group, :mode
      end

      def self.setup_state_attrs!
        if Platform.windows?
          # Use Windows rights instead of standard *nix permissions
          use_windows_state_attrs!
        else
          use_unix_state_attrs!
        end
      end

      setup_state_attrs!

      provides :file, :on_platforms => :all

      def initialize(name, run_context=nil)
        super
        @resource_name = :file
        @path = name
        @backup = 5
        @action = "create"
        @allowed_actions.push(:create, :delete, :touch, :create_if_missing)
        @provider = Chef::Provider::File
        @diff = nil
      end


      def content(arg=nil)
        set_or_return(
                      :content,
          arg,
          :kind_of => String
        )
      end

      def backup(arg=nil)
        set_or_return(
          :backup,
          arg,
          :kind_of => [ Integer, FalseClass ]
        )
      end

      def checksum(arg=nil)
        set_or_return(
          :checksum,
          arg,
          :regex => /^[a-zA-Z0-9]{64}$/
        )
      end

      def path(arg=nil)
        set_or_return(
          :path,
          arg,
          :kind_of => String
        )
      end
      
      def diff(arg=nil)
        set_or_return(
          :diff,
          arg,
          :kind_of => String
        )
      end


    end
  end
end
