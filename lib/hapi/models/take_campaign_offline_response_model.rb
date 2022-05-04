# hapi
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Hapi
  # TakeCampaignOfflineResponseModel Model.
  class TakeCampaignOfflineResponseModel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :campaign_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['campaign_id'] = 'campaignId'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        campaign_id
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(campaign_id = nil,
                   additional_properties = {})
      @campaign_id = campaign_id unless campaign_id == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      campaign_id = hash.key?('campaignId') ? hash['campaignId'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      TakeCampaignOfflineResponseModel.new(campaign_id,
                                           hash)
    end
  end
end
