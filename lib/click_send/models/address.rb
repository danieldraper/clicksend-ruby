# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class Address < BaseModel
    # Your address name.
    # @return [String]
    attr_accessor :address_name

    # Your address line 1
    # @return [String]
    attr_accessor :address_line_1

    # Your city
    # @return [String]
    attr_accessor :address_city

    # Your state
    # @return [String]
    attr_accessor :address_state

    # Your postal code
    # @return [Integer]
    attr_accessor :address_postal_code

    # Your country
    # @return [String]
    attr_accessor :address_country

    # Your address line 2
    # @return [String]
    attr_accessor :address_line_2

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["address_name"] = "address_name"
        @_hash["address_line_1"] = "address_line_1"
        @_hash["address_city"] = "address_city"
        @_hash["address_state"] = "address_state"
        @_hash["address_postal_code"] = "address_postal_code"
        @_hash["address_country"] = "address_country"
        @_hash["address_line_2"] = "address_line_2"
      end
      @_hash
    end

    def initialize(address_name = nil,
                   address_line_1 = nil,
                   address_city = nil,
                   address_state = nil,
                   address_postal_code = nil,
                   address_country = nil,
                   address_line_2 = nil)
      @address_name = address_name
      @address_line_1 = address_line_1
      @address_city = address_city
      @address_state = address_state
      @address_postal_code = address_postal_code
      @address_country = address_country
      @address_line_2 = address_line_2
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      address_name = hash['address_name']
      address_line_1 = hash['address_line_1']
      address_city = hash['address_city']
      address_state = hash['address_state']
      address_postal_code = hash['address_postal_code']
      address_country = hash['address_country']
      address_line_2 = hash['address_line_2']

      # Create object from extracted values
      Address.new(address_name,
                  address_line_1,
                  address_city,
                  address_state,
                  address_postal_code,
                  address_country,
                  address_line_2)
    end
  end
end
