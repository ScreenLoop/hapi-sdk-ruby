# hapi
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Hapi
  # SeniorityModel Model.
  class SeniorityModel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Internal Identification for a Seniority Level
    # @return [Integer]
    attr_accessor :id

    # Internal Identification for a Seniority Level
    # @return [List of Name3Model]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        id
        name
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(id = nil,
                   name = nil,
                   additional_properties = {})
      @id = id unless id == SKIP
      @name = name unless name == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      # Parameter is an array, so we need to iterate through it
      name = nil
      unless hash['name'].nil?
        name = []
        hash['name'].each do |structure|
          name << (Name3Model.from_hash(structure) if structure)
        end
      end

      name = SKIP unless hash.key?('name')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SeniorityModel.new(id,
                         name,
                         hash)
    end
  end
end
