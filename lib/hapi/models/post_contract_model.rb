# hapi
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Hapi
  # PostContractModel Model.
  class PostContractModel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :channel_id

    # An object with credentials data
    # @return [Object]
    attr_accessor :credentials

    # An object with product parameters
    # @return [Object]
    attr_accessor :facets

    # When creating contracts for Channels that require the end-user to follow
    # instructions (based on the `manual_setup_required` key in the response
    # body for the [Retrieve details for channel with support for
    # contracts](https://vonq.stoplight.io/docs/hapi/b3A6NTUxMjYwODI-retrieve-de
    # tails-for-channel-with-support-for-contracts) endpoint), set this value to
    # `true` to confirm the user has done so. For quality purposes, setting this
    # field to `true` for Channels that don't require following instructions
    # will result in a 400 Bad Request.
    # @return [Boolean]
    attr_accessor :followed_instructions

    # When creating contracts for Channels that require the end-user to follow
    # instructions (based on the `manual_setup_required` key in the response
    # body for the [Retrieve details for channel with support for
    # contracts](https://vonq.stoplight.io/docs/hapi/b3A6NTUxMjYwODI-retrieve-de
    # tails-for-channel-with-support-for-contracts) endpoint), set this value to
    # `true` to confirm the user has done so. For quality purposes, setting this
    # field to `true` for Channels that don't require following instructions
    # will result in a 400 Bad Request.
    # @return [DateTime]
    attr_accessor :expiry_date

    # When creating contracts for Channels that require the end-user to follow
    # instructions (based on the `manual_setup_required` key in the response
    # body for the [Retrieve details for channel with support for
    # contracts](https://vonq.stoplight.io/docs/hapi/b3A6NTUxMjYwODI-retrieve-de
    # tails-for-channel-with-support-for-contracts) endpoint), set this value to
    # `true` to confirm the user has done so. For quality purposes, setting this
    # field to `true` for Channels that don't require following instructions
    # will result in a 400 Bad Request.
    # @return [Float]
    attr_accessor :credits

    # When creating contracts for Channels that require the end-user to follow
    # instructions (based on the `manual_setup_required` key in the response
    # body for the [Retrieve details for channel with support for
    # contracts](https://vonq.stoplight.io/docs/hapi/b3A6NTUxMjYwODI-retrieve-de
    # tails-for-channel-with-support-for-contracts) endpoint), set this value to
    # `true` to confirm the user has done so. For quality purposes, setting this
    # field to `true` for Channels that don't require following instructions
    # will result in a 400 Bad Request.
    # @return [ContractPurchasePriceModel]
    attr_accessor :purchase_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['channel_id'] = 'channel_id'
      @_hash['credentials'] = 'credentials'
      @_hash['facets'] = 'facets'
      @_hash['followed_instructions'] = 'followed_instructions'
      @_hash['expiry_date'] = 'expiry_date'
      @_hash['credits'] = 'credits'
      @_hash['purchase_price'] = 'purchase_price'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        facets
        followed_instructions
        expiry_date
        credits
        purchase_price
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(channel_id = nil,
                   credentials = nil,
                   facets = nil,
                   followed_instructions = nil,
                   expiry_date = nil,
                   credits = nil,
                   purchase_price = nil,
                   additional_properties = {})
      @channel_id = channel_id unless channel_id == SKIP
      @credentials = credentials unless credentials == SKIP
      @facets = facets unless facets == SKIP
      @followed_instructions = followed_instructions unless followed_instructions == SKIP
      @expiry_date = expiry_date unless expiry_date == SKIP
      @credits = credits unless credits == SKIP
      @purchase_price = purchase_price unless purchase_price == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      channel_id = hash.key?('channel_id') ? hash['channel_id'] : SKIP
      credentials = hash.key?('credentials') ? hash['credentials'] : SKIP
      facets = hash.key?('facets') ? hash['facets'] : SKIP
      followed_instructions =
        hash.key?('followed_instructions') ? hash['followed_instructions'] : SKIP
      expiry_date = if hash.key?('expiry_date')
                      (DateTimeHelper.from_rfc3339(hash['expiry_date']) if hash['expiry_date'])
                    else
                      SKIP
                    end
      credits = hash.key?('credits') ? hash['credits'] : SKIP
      purchase_price = ContractPurchasePriceModel.from_hash(hash['purchase_price']) if
        hash['purchase_price']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      PostContractModel.new(channel_id,
                            credentials,
                            facets,
                            followed_instructions,
                            expiry_date,
                            credits,
                            purchase_price,
                            hash)
    end

    def to_expiry_date
      DateTimeHelper.to_rfc3339(expiry_date)
    end
  end
end
