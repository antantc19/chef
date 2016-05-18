#
# Author:: Adam Leff (<adamleff@chef.io>)
# Auther:: Ryan Cragun (<ryan@chef.io>)
#
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

require "uri"
require "chef/event_dispatch/base"
require "chef/data_collector/resource_report"
require "chef/data_collector/serializers/node_update"
require "chef/data_collector/serializers/run_end"
require "chef/data_collector/serializers/run_start"

class Chef
  class DataCollector
    def self.register_reporter?
      Chef::Config[:data_collector_server_url] &&
      !Chef::Config[:why_run] &&
      self.reporter_enabled_for_current_mode?
    end

    def self.reporter_enabled_for_current_mode?
      if Chef::Config[:solo] || Chef::Config[:local_mode]
        acceptable_modes = [:solo, :both]
      else
        acceptable_modes = [:client, :both]
      end

      acceptable_modes.include?(Chef::Config[:data_collector_mode])
    end

    class Reporter < EventDispatch::Base
      attr_reader :updated_resources, :status, :exception, :error_descriptions,
                  :expanded_run_list, :run_status, :http, :resource_count,
                  :current_resource_report, :enabled

      def initialize
        @updated_resources       = []
        @resource_count          = 0
        @current_resource_loaded = nil
        @status                  = "success"
        @exception               = nil
        @error_descriptions      = {}
        @expanded_run_list       = {}
        @http                    = Chef::HTTP.new(data_collector_server_url)
        @enabled                 = true
      end

      def run_started(current_run_status)
        update_run_status(current_run_status)

        disable_reporter_on_error do
          send_to_data_collector(Serializers::RunStart.new(run_status))
        end
      end

      def run_completed(node)
        send_run_completion
      end

      def run_failed(exception)
        update_exception(exception)
        send_run_completion
      end

      def resource_current_state_loaded(new_resource, action, current_resource)
        return if nested_resource?(new_resource)
        update_current_resource_report(
          Chef::DataCollector::ResourceReport.new(
            new_resource,
            action,
            current_resource
          )
        )
      end

      def resource_up_to_date(new_resource, action)
        current_resource_report.up_to_date unless nested_resource?(new_resource)
        increment_resource_count
      end

      def resource_skipped(new_resource, action, conditional)
        increment_resource_count
        return if nested_resource?(new_resource)

        update_current_resource_report(
          Chef::DataCollector::ResourceReport.new(
            new_resource,
            action
          )
        )
        current_resource_report.skipped(conditional)
      end

      def resource_updated(new_resource, action)
        current_resource_report.updated unless nested_resource?(new_resource)
        increment_resource_count
      end

      def resource_failed(new_resource, action, exception)
        current_resource_report.failed(exception) unless nested_resource?(new_resource)
        increment_resource_count
        update_error_description(
          Formatters::ErrorMapper.resource_failed(
            new_resource,
            action,
            exception
          ).for_json
        )
      end

      def resource_completed(new_resource)
        if current_resource_report && !nested_resource?(new_resource)
          current_resource_report.finish
          add_updated_resource(current_resource_report)
          update_current_resource_report(nil)
        end
      end

      def run_list_expanded(run_list_expansion)
        @expanded_run_list = run_list_expansion
      end

      def run_list_expand_failed(node, exception)
        update_error_description(
          Formatters::ErrorMapper.run_list_expand_failed(
            node,
            exception
          ).for_json
        )
      end

      def cookbook_resolution_failed(expanded_run_list, exception)
        update_error_description(
          Formatters::ErrorMapper.cookbook_resolution_failed(
            expanded_run_list,
            exception
          ).for_json
        )
      end

      def cookbook_sync_failed(cookbooks, exception)
        update_error_description(
          Formatters::ErrorMapper.cookbook_sync_failed(
            cookbooks,
            exception
          ).for_json
        )
      end

      private

      def disable_reporter_on_error
        yield
      rescue Timeout::Error, Errno::EINVAL, Errno::ECONNRESET, Errno::ECONNREFUSED, EOFError, Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError => e
        disable_data_collector_reporter
        code = if e.respond_to?(:response) && e.response.code
                 e.response.code.to_s
               else
                 "Exception Code Empty"
               end

        msg = "Error while reporting run start to Data Collector. " \
              "URL: #{data_collector_server_url} " \
              "Exception: #{code} -- #{e.message} "

        if Chef::Config[:data_collector_raise_on_failure]
          Chef::Log.error(msg)
          raise
        else
          Chef::Log.warn(msg)
        end
      end

      def send_to_data_collector(message)
        return unless data_collector_accessible?

        Chef::Log.debug("data_collector_reporter: POSTing the following message to #{data_collector_server_url}: #{message.to_json}")
        http.post(nil, message.to_json, headers)
      end

      def send_run_completion
        # If run_status is nil we probably failed before the client triggered
        # the run_started callback. In this case we'll skip updating because
        # we have nothing to report.
        return unless run_status

        send_to_data_collector(Serializers::NodeUpdate.new(run_status))
        send_to_data_collector(
          Serializers::RunEnd.new(
            run_status: run_status,
            expanded_run_list: expanded_run_list,
            total_resource_count: resource_count,
            updated_resources: updated_resources,
            status: status,
            error_descriptions: error_descriptions
          )
        )
      end

      def headers(additional_headers = {})
        headers = { "Content-Type" => "application/json" }
        headers["x-data-collector-token"] = data_collector_token unless data_collector_token.nil?

        headers.merge(additional_headers)
      end

      def data_collector_server_url
        Chef::Config[:data_collector_server_url]
      end

      def data_collector_token
        Chef::Config[:data_collector_token]
      end

      def increment_resource_count
        @resource_count += 1
      end

      def add_updated_resource(resource_report)
        @updated_resources << resource_report
      end

      def disable_data_collector_reporter
        # TODO: should the event dispatcher support de-registering?
        @enabled = false
      end

      def data_collector_accessible?
        @enabled
      end

      def update_status(status)
        @status = status
      end

      def update_run_status(run_status)
        @run_status = run_status
      end

      def update_exception(ex)
        @exception = ex
        update_status("failure")
      end

      def update_current_resource_report(resource_report)
        @current_resource_report = resource_report
      end

      def update_error_description(discription_hash)
        @error_descriptions = discription_hash
      end

      # If we are getting messages about a resource while we are in the middle of
      # another resource's update, we assume that the nested resource is just the
      # implementation of a provider, and we want to hide it from the reporting
      # output.
      def nested_resource?(new_resource)
        @current_resource_report && @current_resource_report.new_resource != new_resource
      end
    end
  end
end
