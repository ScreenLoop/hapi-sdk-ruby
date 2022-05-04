# hapi
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Hapi
  # SalaryIndicationModel Model.
  class SalaryIndicationModel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :period

    # TODO: Write general description for this method
    # @return [Range4Model]
    attr_accessor :range

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['period'] = 'period'
      @_hash['range'] = 'range'
      @_hash
    end

    # An array for optional fields
    def optionals
      []
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(period = nil,
                   range = nil,
                   additional_properties = {})
      @period = period unless period == SKIP
      @range = range unless range == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      period = hash.key?('period') ? hash['period'] : SKIP
      range = Range4Model.from_hash(hash['range']) if hash['range']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SalaryIndicationModel.new(period,
                                range,
                                hash)
    end
  end
end