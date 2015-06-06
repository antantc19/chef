#
# Author:: Daniel DeLeo (<dan@kallistec.com>)
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
    class Scm < Chef::Resource
      default_action :sync
      allowed_actions :checkout, :export, :sync, :diff, :log

      identity_attr :destination
      state_attrs :revision
      property :destination, String, name_property: true
      property :repository, String
      property :revision, String, default: "HEAD"
      property :user, [ String, Integer ]
      property :group, [ String, Integer ]
      property :svn_username, String
      property :svn_password, String
      property :svn_arguments, [ String, nil ], coerce: proc { |arg| arg == false ? nil : arg }
      property :svn_info_args, [ String, nil ], coerce: proc { |arg| arg == false ? nil : arg }
      property :depth, Integer
      property :enable_checkout, [ true, false ]
      property :remote, String, default: "origin"
      property :ssh_wrapper, String
      property :timeout, Integer
      property :checkout_branch, String, default: "deploy"
      property :environment, Hash
      alias :env :environment
    end
  end
end
