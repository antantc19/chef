#
# Author:: Daniel DeLeo (<dan@kallistec.com>)
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

# EX:
# deploy "/my/deploy/dir" do
#   repo "git@github.com/whoami/project"
#   revision "abc123" # or "HEAD" or "TAG_for_1.0" or (subversion) "1234"
#   user "deploy_ninja"
#   enable_submodules true
#   migrate true
#   migration_command "rake db:migrate"
#   environment "RAILS_ENV" => "production", "OTHER_ENV" => "foo"
#   shallow_clone true
#   action :deploy # or :rollback
#   restart_command "touch tmp/restart.txt"
#   git_ssh_wrapper "wrap-ssh4git.sh"
#   scm_provider Chef::Provider::Git # is the default, for svn: Chef::Provider::Subversion
#   svn_username "whoami"
#   svn_password "supersecret"
# end

require "chef/resource/scm"
require "chef/provider/git"

class Chef
  class Resource

    # Deploy: Deploy apps from a source control repository.
    #
    # Callbacks:
    # Callbacks can be a block or a string. If given a block, the code
    # is evaluated as an embedded recipe, and run at the specified
    # point in the deploy process. If given a string, the string is taken as
    # a path to a callback file/recipe. Paths are evaluated relative to the
    # release directory. Callback files can contain chef code (resources, etc.)
    #
    class Deploy < Chef::Resource

      identity_attr :repository

      state_attrs :deploy_to, :revision

      default_action :deploy
      allowed_actions :force_deploy, :deploy, :rollback


      # note: deploy_to is your application "meta-root."
      property :deploy_to, String, name_property: true
      property :repo, String
      alias :repository :repo
      property :remote, String, default: "origin"
      property :role, String
      property :restart_command, [ String, Proc ], coerce: proc { |arg=nil, &block| arg || &block}
      alias :restart :restart_command

      property :migrate, [ true, false ], default: false
      property :migration_command, String

      property :rollback_on_error, [ true, false ], default: false

      property :user, String
      property :group, String

      property :enable_submodules, [ true, false ], default: false
      property :shallow_clone, [ true, false ], default: false
      property :repository_cache, String, default: 'cached-copy'
      property :copy_exclude, String, default: lazy { [] }
      property :revision, String, default: 'HEAD'

      property :scm_provider, Class, default: Chef::Provider::Git, coerce: proc do |arg|
        arg = lookup_provider_constant(arg) if arg.kind_of?(String) || arg.kind_of?(Symbol)
        arg
      end
      property :git_ssh_wrapper, String
      alias :ssh_wrapper :git_ssh_wrapper
      property :svn_username, String
      property :svn_password, String
      property :svn_arguments, String
      property :svn_info_args, String
      property :svn_force_export, [ true, false ], default: false

      property :environment, Hash, coerce: proc do |arg|
        if arg.is_a?(String)
          Chef::Log.debug "Setting RAILS_ENV, RACK_ENV, and MERB_ENV to `#{arg}'"
          Chef::Log.warn "[DEPRECATED] please modify your deploy recipe or attributes to set the environment using a hash"
          arg = {"RAILS_ENV"=>arg,"MERB_ENV"=>arg,"RACK_ENV"=>arg}
        end
        arg
      end

      property :keep_releases, Integer, default: 5, coerce: { |v| v.is_a?(Integer) ? [ v, 1 ].max }

      # An array of paths, relative to your app's root, to be purged from a
      # SCM clone/checkout before symlinking. Use this to get rid of files and
      # directories you want to be shared between releases.
      # Default: ["log", "tmp/pids", "public/system"]
      property :purge_before_symlink, Array, default: lazy { %w{log tmp/pids public/system} }

      # An array of paths, relative to your app's root, where you expect dirs to
      # exist before symlinking. This runs after #purge_before_symlink, so you
      # can use this to recreate dirs that you had previously purged.
      # For example, if you plan to use a shared directory for pids, and you
      # want it to be located in $APP_ROOT/tmp/pids, you could purge tmp,
      # then specify tmp here so that the tmp directory will exist when you
      # symlink the pids directory in to the current release.
      # Default: ["tmp", "public", "config"]
      property :create_dirs_before_symlink, Array default: %w{tmp public config}

      # A Hash of shared/dir/path => release/dir/path. This attribute determines
      # which files in the shared directory get symlinked to the current release
      # directory and where they go. Unlike map_shared_files, these are symlinked
      # *before* any migration is run.
      # For a rails/merb app, this is used to link in a known good database.yml
      # (with the production db password) before running migrate.
      # Default {"config/database.yml" => "config/database.yml"}
      property :symlink_before_migrate, Hash, default: {"config/database.yml" => "config/database.yml"}

      # A Hash of shared/dir/path => release/dir/path. This attribute determines
      # which files and dirs in the shared directory get symlinked to the current
      # release directory, and where they go. If you have a directory
      # $shared/pids that you would like to symlink as $current_release/tmp/pids
      # you specify it as "pids" => "tmp/pids"
      # Default {"system" => "public/system", "pids" => "tmp/pids", "log" => "log"}
      property :symlinks, Hash, default: {"system" => "public/system", "pids" => "tmp/pids", "log" => "log"}

      property :before_migrate, [ Proc String ], coerce: proc { |arg=nil, &block| arg || block }
      property :before_symlink, [ Proc String ], coerce: proc { |arg=nil, &block| arg || block }
      property :before_restart, [ Proc String ], coerce: proc { |arg=nil, &block| arg || block }
      property :after_restart,  [ Proc String ], coerce: proc { |arg=nil, &block| arg || block }

      property :shallow_clone, default: false

      property :additional_remotes, kind_of: Hash, default: lazy { Hash[] }

      property :enable_checkout, [true, false], default: true
      property :checkout_branch, String, default: "deploy"

      # FIXME The Deploy resource may be passed to an SCM provider as its
      # resource.  The SCM provider knows that SCM resources can specify a
      # timeout for SCM operations. The deploy resource must therefore support
      # a timeout method, but the timeout it describes is for SCM operations,
      # not the overall deployment. This is potentially confusing.
      property :timeout, Integer

      # where the checked out/cloned code goes
      def destination
        @destination ||= "#{shared_path}/#{repository_cache}"
      end

      # where shared stuff goes, i.e., logs, tmp, etc. goes here
      def shared_path
        @shared_path ||= "#{deploy_to}/shared"
      end

      # where the deployed version of your code goes
      def current_path
        @current_path ||= "#{deploy_to}/current"
      end

      def depth
        shallow_clone ? "5" : nil
      end


      # This is to support "provider :revision" without deprecation warnings.
      # Do NOT copy this.
      def self.provider_base
        Chef::Provider::Deploy
      end

    end
  end
end
