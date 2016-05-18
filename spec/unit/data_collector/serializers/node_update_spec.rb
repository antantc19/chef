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
require "chef/data_collector/serializers/node_update"

describe Chef::DataCollector::Serializers::NodeUpdate do
  let(:node)       { double("node") }
  let(:run_status) { double("run_status") }
  let(:serializer) { described_class.new(run_status) }
  let(:required_fields) do
    %w(
      entity_name
      entity_type
      entity_uuid
      id
      message_type
      message_version
      organization_name
      recorded_at
      remote_hostname
      requestor_name
      requestor_type
      service_hostname
      source
      task
      user_agent
    )
  end
  let(:optional_fields) { %w(data) }

  before do
    allow(serializer).to receive(:chef_server_fqdn).and_return("chef_server_fqdn")
    allow(serializer).to receive(:node_uuid).and_return("node_uuid")
    allow(serializer).to receive(:organization).and_return("organization")
    allow(serializer).to receive(:collector_source).and_return("collector_source")
    allow(serializer).to receive(:node).and_return(node)
    allow(node).to receive(:name).and_return("node_name")
    allow(node).to receive(:[]).and_return({ "fqdn" => "node_fqdn" })
  end

  describe '#message_type' do
    it "has a message_type of run_start" do
      expect(serializer.message_type).to eq("action")
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
