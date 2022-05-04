# hapi
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Hapi
  # OrderedProductsSpecModel Model.
  class OrderedProductsSpecModel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :product_id

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :utm

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_id'] = 'productId'
      @_hash['utm'] = 'utm'
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

    def initialize(product_id = nil,
                   utm = nil,
                   additional_properties = {})
      @product_id = product_id unless product_id == SKIP
      @utm = utm unless utm == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_id = hash.key?('productId') ? hash['productId'] : SKIP
      utm = hash.key?('utm') ? hash['utm'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      OrderedProductsSpecModel.new(product_id,
                                   utm,
                                   hash)
    end
  end
end