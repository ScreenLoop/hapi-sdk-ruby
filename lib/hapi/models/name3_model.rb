# hapi
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Hapi
  # Name3Model Model.
  class Name3Model < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ICU Locale code for the Language of the Seniority's name
    # @return [String]
    attr_accessor :language_code

    # Seniority name in one defined Language
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['language_code'] = 'languageCode'
      @_hash['value'] = 'value'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        language_code
        value
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(language_code = nil,
                   value = nil,
                   additional_properties = {})
      @language_code = language_code unless language_code == SKIP
      @value = value unless value == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      language_code = hash.key?('languageCode') ? hash['languageCode'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Name3Model.new(language_code,
                     value,
                     hash)
    end
  end
end