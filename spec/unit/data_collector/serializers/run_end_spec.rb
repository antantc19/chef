#
# Author:: Adam Leff (<adamleff@chef.io)
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

require "spec_helper"
require "chef/data_collector/serializers/base"
require "chef/data_collector/serializers/run_end"

describe Chef::DataCollector::Serializers::RunEnd do
  let(:node)       { double("node") }
  let(:run_list)   { double("run_list")}
  let(:run_status) { double("run_status") }
  let(:serializer) { described_class.new({}) }
  let(:resource)   { double("resource")}

  before do
    allow(serializer).to receive(:chef_server_fqdn).and_return("chef_server_fqdn")
    allow(serializer).to receive(:node_uuid).and_return("node_uuid")
    allow(serializer).to receive(:organization).and_return("organization")
    allow(serializer).to receive(:collector_source).and_return("collector_source")
    allow(serializer).to receive(:expanded_run_list).and_return("expanded_run_list")
    allow(serializer).to receive(:updated_resources).and_return([resource])
    allow(serializer).to receive(:formatted_exception).and_return("formatted_exception")
    allow(serializer).to receive(:status).and_return("status")
    allow(serializer).to receive(:total_resource_count).and_return("total_resource_count")
    allow(serializer).to receive(:run_status).and_return(run_status)
    allow(node).to receive(:name).and_return("node_name")
    allow(node).to receive(:run_list).and_return(run_list)
    allow(resource).to receive(:for_json).and_return("resource_json")
    allow(run_list).to receive(:for_json).and_return("run_list_json")
    allow(run_status).to receive(:run_id).and_return("run_id")
    allow(run_status).to receive(:node).and_return(node)
    allow(run_status).to receive(:start_time).and_return(Time.now)
    allow(run_status).to receive(:end_time).and_return(Time.now)
  end

  describe '#message_type' do
    it "has a message_type of run_converge" do
      expect(serializer.message_type).to eq("run_converge")
    end

    context "when the run was successful" do
      let(:required_fields) do
        %w(
          chef_server_fqdn
          entity_uuid
          id
          end_time
          expanded_run_list
          message_type
          message_version
          node_name
          organization_name
          resources
          run_id
          run_list
          source
          start_time
          status
          total_resource_count
          updated_resource_count
        )
      end
      let(:optional_fields) { %w(error) }

      before do
        allow(run_status).to receive(:exception).and_return(nil)
      end

      it "is not missing any required fields" do
        missing_fields = required_fields.select { |key| !serializer.document.key?(key) }
        expect(missing_fields).to eq([])
      end

      it "does not have any extra fields" do
        extra_fields = serializer.document.keys.select { |key| !required_fields.include?(key) && !optional_fields.include?(key) }
        expect(extra_fields).to eq([])
      end
    end

    context "when the run was not successful" do
      let(:required_fields) do
        %w(
          chef_server_fqdn
          entity_uuid
          id
          end_time
          error
          expanded_run_list
          message_type
          message_version
          node_name
          organization_name
          resources
          run_id
          run_list
          source
          start_time
          status
          total_resource_count
          updated_resource_count
        )
      end
      let(:optional_fields) { [] }

      before do
        allow(run_status).to receive(:exception).and_return("exception")
      end

      it "is not missing any required fields" do
        missing_fields = required_fields.select { |key| !serializer.document.key?(key) }
        expect(missing_fields).to eq([])
      end

      it "does not have any extra fields" do
        extra_fields = serializer.document.keys.select { |key| !required_fields.include?(key) && !optional_fields.include?(key) }
        expect(extra_fields).to eq([])
      end
    end
  end
end
