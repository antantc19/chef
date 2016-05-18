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

describe Chef::DataCollector::Serializers::Base do
  let(:serializer) { described_class.new }

  describe '#document' do
    it "should raise an exception" do
      expect { serializer.document }.to raise_error(RuntimeError)
    end
  end
  
  describe '#message_type' do
    it "should raise an exception" do
      expect { serializer.message_type }.to raise_error(RuntimeError)
    end
  end

  describe '#to_json' do
    let(:document) { double("document") }

    it "should convert the document to JSON" do
      allow(serializer).to receive(:document).and_return(document)
      expect(document).to receive(:to_json)
      serializer.to_json
    end
  end

  describe '#organization' do
    context "when the run is a solo run" do
      it "returns the data collector organization" do
        allow(serializer).to receive(:solo_run?).and_return(true)
        expect(serializer).to receive(:data_collector_organization).and_return("org1")
        expect(serializer.organization).to eq("org1")
      end
    end

    context "when the run is not a solo run" do
      it "returns the data collector organization" do
        allow(serializer).to receive(:solo_run?).and_return(false)
        expect(serializer).to receive(:chef_server_organization).and_return("org2")
        expect(serializer.organization).to eq("org2")
      end
    end
  end

  describe '#data_collector_organization' do
    context "when the org is specified in the config" do
      it "returns the org from the config" do
        Chef::Config[:data_collector_organization] = "org1"
        expect(serializer.data_collector_organization).to eq("org1")
      end
    end

    context "when the org is not specified in the config" do
      it "returns the default chef_solo org" do
        expect(serializer.data_collector_organization).to eq("chef_solo")
      end
    end
  end

  describe '#chef_server_organization' do
    context "when the URL is properly formatted" do
      it "returns the org from the parsed URL" do
        Chef::Config[:chef_server_url] = "http://mycompany.com/organizations/myorg"
        expect(serializer.chef_server_organization).to eq("myorg")
      end
    end

    context "when the URL is not properly formatted" do
      it "returns unknown_organization" do
        Chef::Config[:chef_server_url] = "http://mycompany.com/what/url/is/this"
        expect(serializer.chef_server_organization).to eq("unknown_organization")
      end
    end
  end

  describe '#collector_source' do
    context "when the run is a solo run" do
      it "returns chef_solo" do
        allow(serializer).to receive(:solo_run?).and_return(true)
        expect(serializer.collector_source).to eq("chef_solo")
      end
    end

    context "when the run is not a solo run" do
      it "returns chef_client" do
        allow(serializer).to receive(:solo_run?).and_return(false)
        expect(serializer.collector_source).to eq("chef_client")
      end
    end
  end

  describe '#solo_run?' do
    context "when :solo is set in Chef::Config" do
      it "returns true" do
        Chef::Config[:solo] = true
        Chef::Config[:local_mode] = nil
        expect(serializer.solo_run?).to be_truthy
      end
    end

    context "when :local_mode is set in Chef::Config" do
      it "returns true" do
        Chef::Config[:solo] = nil
        Chef::Config[:local_mode] = true
        expect(serializer.solo_run?).to be_truthy
      end
    end

    context "when neither :solo or :local_mode is set in Chef::Config" do
      it "returns false" do
        Chef::Config[:solo] = nil
        Chef::Config[:local_mode] = nil
        expect(serializer.solo_run?).to be_falsey
      end
    end
  end

  describe '#node_uuid' do
    context "when the node UUID can be read" do
      it "returns the read-in node UUID" do
        allow(serializer).to receive(:read_node_uuid).and_return("read_uuid")
        expect(serializer.node_uuid).to eq("read_uuid")
      end
    end

    context "when the node UUID cannot be read" do
      it "generated a new node UUID" do
        allow(serializer).to receive(:read_node_uuid).and_return(nil)
        allow(serializer).to receive(:generate_node_uuid).and_return("generated_uuid")
        expect(serializer.node_uuid).to eq("generated_uuid")
      end
    end
  end

  describe '#generate_node_uuid' do
    it "generates a new UUID, stores it, and returns it" do
      expect(SecureRandom).to receive(:uuid).and_return("generated_uuid")
      expect(serializer).to receive(:update_metadata).with("node_uuid", "generated_uuid")
      expect(serializer.generate_node_uuid).to eq("generated_uuid")
    end
  end

  describe '#read_node_uuid' do
    it "reads the node UUID from metadata" do
      expect(serializer).to receive(:metadata).and_return({ "node_uuid" => "read_uuid" })
      expect(serializer.read_node_uuid).to eq("read_uuid")
    end
  end

  describe "metadata" do
    let(:metadata_filename) { "fake_metadata_file.json" }

    before do
      allow(serializer).to receive(:metadata_filename).and_return(metadata_filename)
    end

    context "when the metadata file exists" do
      it "returns the contents of the metadata file" do
        expect(Chef::FileCache).to receive(:load).with(metadata_filename).and_return('{"foo":"bar"}')
        expect(serializer.metadata["foo"]).to eq("bar")
      end
    end

    context "when the metadata file does not exist" do
      it "returns an empty hash" do
        expect(Chef::FileCache).to receive(:load).with(metadata_filename).and_raise(Chef::Exceptions::FileNotFound)
        expect(serializer.metadata).to eq({})
      end
    end
  end

  describe '#update_metadata' do
    let(:metadata) { double("metadata") }

    it "updates the file" do
      allow(serializer).to receive(:metadata_filename).and_return("fake_metadata_file.json")
      allow(serializer).to receive(:metadata).and_return(metadata)
      expect(metadata).to receive(:[]=).with("new_key", "new_value")
      expect(metadata).to receive(:to_json).and_return("metadata_json")
      expect(Chef::FileCache).to receive(:store).with(
        "fake_metadata_file.json",
        "metadata_json",
        0644
      )

      serializer.update_metadata("new_key", "new_value")
    end
  end
end
