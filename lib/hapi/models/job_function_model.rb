# hapi
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Hapi
  # JobFunction(id, name, parent)
  class JobFunctionModel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :parent

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['parent'] = 'parent'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        id
        parent
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(name = nil,
                   id = nil,
                   parent = nil,
                   additional_properties = {})
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @parent = parent unless parent == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      parent = hash.key?('parent') ? hash['parent'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      JobFunctionModel.new(name,
                           id,
                           parent,
                           hash)
    end
  end
end
