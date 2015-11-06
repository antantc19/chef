require 'support/shared/integration/integration_helper'

module StandardTypesTests

  describe Chef::Property::StandardTypes do
    include IntegrationSupport

    describe "Boolean" do
      Boolean
      context "With a resource with a Boolean property" do
        class BooleanResource < Chef::Resource
          property :x, Boolean
        end

        let(:resource) { BooleanResource.new("blah") }

        it "defaults to false" do
          expect(resource.x).to eq false
        end
        it "accepts true" do
          resource.x true
          expect(resource.x).to eq true
        end
        it "accepts false" do
          resource.x false
          expect(resource.x).to eq false
        end
        it "does not accept 1" do
          expect { resource.x 1 }.to raise Chef::Exceptions::ValidationError
        end
      end
    end
  end

end
