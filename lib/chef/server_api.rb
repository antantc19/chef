#
# Author:: John Keiser (<jkeiser@chef.io>)
# Copyright:: Copyright 2012-2016, Chef Software Inc.
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

require "chef/http"
require "chef/http/authenticator"
require "chef/http/cookie_manager"
require "chef/http/decompressor"
require "chef/http/json_input"
require "chef/http/json_output"
require "chef/http/remote_request_id"
require "chef/http/validate_content_length"

class Chef
  class ServerAPI < Chef::HTTP

    class << self
      attr_accessor :chef_server_url
      attr_accessor :client_name
      attr_accessor :signing_key_filename

      def set_defaults(chef_server_url, client_name, signing_key_filename)
        @chef_server_url      = chef_server_url
        @client_name          = client_name
        @signing_key_filename = signing_key_filename
      end

      def client_cache
        Thread.current[:chef_server_api_client_cache] ||= new
      end
    end

    def initialize(url = self.class.chef_server_url, options = {})
      options[:client_name] ||= self.class.client_name
      options[:signing_key_filename] ||= self.class.signing_key_filename
      options[:signing_key_filename] = nil if chef_zero_uri?(url)
      options[:inflate_json_class] = false
      super(url, options)
    end

    use Chef::HTTP::JSONInput
    use Chef::HTTP::JSONOutput
    use Chef::HTTP::CookieManager
    use Chef::HTTP::Decompressor
    use Chef::HTTP::Authenticator
    use Chef::HTTP::RemoteRequestID

    # ValidateContentLength should come after Decompressor
    # because the order of middlewares is reversed when handling
    # responses.
    use Chef::HTTP::ValidateContentLength

    # for back compat with Chef::REST, expose `<verb>_rest` as an alias to `<verb>`
    alias :get_rest :get
    alias :delete_rest :delete
    alias :post_rest :post
    alias :put_rest :put

    # Makes an HTTP request to +path+ with the given +method+, +headers+, and
    # +data+ (if applicable). Does not apply any middleware, besides that
    # needed for Authentication.
    def raw_request(method, path, headers = {}, data = false)
      url = create_url(path)
      method, url, headers, data = Chef::HTTP::Authenticator.new(options).handle_request(method, url, headers, data)
      method, url, headers, data = Chef::HTTP::RemoteRequestID.new(options).handle_request(method, url, headers, data)
      response, rest_request, return_value = send_http_request(method, url, headers, data)
      response.error! unless success_response?(response)
      return_value
    rescue Exception => exception
      log_failed_request(response, return_value) unless response.nil?

      if exception.respond_to?(:chef_rest_request=)
        exception.chef_rest_request = rest_request
      end
      raise
    end
  end
end
