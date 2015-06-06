#
# Author:: AJ Christensen (<aj@opscode.com>)
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

require 'chef/resource/package'
require 'chef/provider/package/yum'

class Chef
  class Resource
    class YumPackage < Chef::Resource::Package
      provides :package, os: "linux", platform_family: [ "rhel", "fedora" ]

      def initialize(name, run_context=nil)
        super
        @allow_downgrade = false
      end

      # Install a specific arch
      property :arch, [ String, Array ]
      property :allow_downgrade, [ true, false ], default: false
      # TODO "{}" is treated as a get, and this doesn't support that ...
#      property :flush_cache, Hash, default: lazy { { :before => false, :after => false } }, coerce: { |v| v.is_a?(Array) ? supports.merge(v.map { |v| [ v, true ] }) : v }
      def flush_cache(args={})
        if args.is_a? Array
          args.each { |arg| @flush_cache[arg] = true }
        elsif args.any?
          @flush_cache = args
        else
          @flush_cache
        end
      end
    end
  end
end
