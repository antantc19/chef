#
# Author:: Bryan McLellan <btm@loftninjas.org>
# Copyright:: Copyright (c) 2014 Chef Software, Inc.
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

require 'chef/win32/windows_update' if RUBY_PLATFORM =~ /mswin|mingw32|windows/
require 'chef/mixin/shell_out'

# It could be possible to use DismAddPackage in the future instead of running wusa.exe
# new_resource.name could support both paths and guid's by searching for a slash (path)

class Chef
  class Provider
    class Package
      class Windows
        class MSU
          include Chef::Mixin::ShellOut

          def initialize(resource)
            @new_resource = resource
          end

          # From Chef::Provider::Package
          def expand_options(options)
            options ? " #{options}" : ""
          end

          # TODO: how do we find a GUID or KB from an MSU or CAB?

          # Returns a version if the package is installed or nil if it is not.
          def installed_version # FIXME
            Chef::Log.debug("#{@new_resource} getting product code for package at #{@new_resource.source}")
            product_code = get_product_property(@new_resource.source, "ProductCode")
            Chef::Log.debug("#{@new_resource} checking package status and verion for #{product_code}")
            get_installed_version(product_code)
          end

          def package_version # FIXME
            Chef::Log.debug("#{@new_resource} getting product version for package at #{@new_resource.source}")
            get_product_property(@new_resource.source, "ProductVersion")
          end

          def install_package(name, version)
            Chef::Log.debug("#{@new_resource} installing Windows Update package '#{@new_resource.source}'")
            shell_out!("wusa \"#{@new_resource.source}\" /quiet /norestart", {:timeout => @new_resource.timeout, :returns => @new_resource.returns})
          end
  
          def remove_package(name, version)
            if version
              # Presume version is Microsoft Knowledge Base (KB) number
              Chef::Log.debug("#{@new_resource} removing Windows Update KB '#{version}'")
              shell_out!("wusa /uninstall /kb:#{version} /quiet /norestart", {:timeout => @new_resource.timeout, :returns => @new_resource.returns})
            else
              Chef::Log.debug("#{@new_resource} removing Windows Update package '#{@new_resource.source}'")
              shell_out!("wusa /uninstall \"#{@new_resource.source}\" /quiet /norestart", {:timeout => @new_resource.timeout, :returns => @new_resource.returns})
            end
          end
        end
      end
    end
  end
end
