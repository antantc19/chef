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

require 'uri'
require 'chef/resource/file'
require 'chef/provider/remote_file'
require 'chef/mixin/securable'
require 'chef/mixin/uris'

class Chef
  class Resource
    class RemoteFile < Chef::Resource::File
      include Chef::Mixin::Securable

      # source can take any of the following as arguments
      # - A single string argument
      # - Multiple string arguments
      # - An array or strings
      # - A delayed evaluator that evaluates to a string
      #   or array of strings
      # All strings must be parsable as URIs.
      # source returns an array of strings.
      property :source, Array, callbacks: { validate_source: proc { validate_source } },
                               default: lazy { [] },
                               coerce: proc { |*args| parse_source_args(args) }

      property :checksum, String
      property :use_etag, [ true, false ], default: true
      alias :use_etags :use_etag
      property :use_last_modified, [ true, false ], default: true
      property :ftp_active_mode, [ true, false ], default: false
      property :headers, Hash, default: lazy { {} }

      def parse_source_args(args)
        args = Array(args).flatten
        if args.any? {|a| a.is_a?(Chef::DelayedEvaluator)}
          raise Exceptions::InvalidRemoteFileURI, "Only 1 source argument allowed when using a lazy evaluator"
        end
      end

      # Disable or enable ETag and Last Modified conditional GET. Equivalent to
      #   use_etag(true_or_false)
      #   use_last_modified(true_or_false)
      def use_conditional_get(true_or_false)
        use_etag(true_or_false)
        use_last_modified(true_or_false)
      end

      private

      include Chef::Mixin::Uris

      def validate_source(source)
        source = Array(source).flatten
        raise ArgumentError, "#{resource_name} has an empty source" if source.empty?
        source.each do |src|
          unless absolute_uri?(src)
            raise Exceptions::InvalidRemoteFileURI,
              "#{src.inspect} is not a valid `source` parameter for #{resource_name}. `source` must be an absolute URI or an array of URIs."
          end
        end
        true
      end

      def absolute_uri?(source)
        Chef::Provider::RemoteFile::Fetcher.network_share?(source) or (source.kind_of?(String) and as_uri(source).absolute?)
      rescue URI::InvalidURIError
        false
      end

    end
  end
end
