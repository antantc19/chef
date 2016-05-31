require_relative "base"

module DataCollector
  module Serializer
    module NodeUpdate
      include Base

      def self.serialize(run_status)
        metadata = get_metadata

        {
          chef_server_fqdn:  chef_server_fqdn,
          entity_uuid:       metadata["node_uuid"],
          message_version:   "1.0.0",
          node_name:         node.name,
          organization_name: organization,
          source:            solo_run? ? "chef_solo" : "chef_client",
          chef_server_fqdn:  chef_server_fqdn,
          entity_uuid:       metadata["node_uuid"],
          message_version:   "1.0.0",
          node_name:         node.name,
          organization_name: organization,
          source:            solo_run? ? "chef_solo" : "chef_client",
          entity_name:      run_status.node.name,
          entity_type:      "node",
          id:               SecureRandom.uuid,
          message_version:  "1.0.0",
          message_type:     "action",
          recorded_at:      Time.now.utc.iso8601,
          remote_hostname:  run_status.node["fqdn"],
          requestor_name:   run_status.node.name,
          requestor_type:   "client",
          service_hostname: chef_server_fqdn,
          task:             "update"
          user_agent:       Chef::HTTP::HTTPRequest::DEFAULT_UA,
          data:             run_status.node,
        )
      end
    end
  end
end
