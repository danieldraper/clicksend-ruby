# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class Contact < BaseModel
    # Your phone number in E.164 format. Must be provided if no fax number or email.
    # @return [String]
    attr_accessor :phone_number

    # Your phone number in E.164 format. Must be provided if no fax number or email.
    # @return [String]
    attr_accessor :custom_1

    # Your email. Must be provided if no phone number or fax number.
    # @return [String]
    attr_accessor :email

    # You fax number. Must be provided if no phone number or email.
    # @return [String]
    attr_accessor :fax_number

    # Your first name.
    # @return [String]
    attr_accessor :first_name

    # Your first name.
    # @return [String]
    attr_accessor :address_line_1

    # Your first name.
    # @return [String]
    attr_accessor :address_line_2

    # Your first name.
    # @return [String]
    attr_accessor :address_city

    # Your first name.
    # @return [String]
    attr_accessor :address_state

    # Your first name.
    # @return [String]
    attr_accessor :address_postal_code

    # Your first name.
    # @return [String]
    attr_accessor :address_country

    # Your first name.
    # @return [String]
    attr_accessor :organization_name

    # Your first name.
    # @return [String]
    attr_accessor :custom_2

    # Your first name.
    # @return [String]
    attr_accessor :custom_3

    # Your first name.
    # @return [String]
    attr_accessor :custom_4

    # Your last name
    # @return [String]
    attr_accessor :last_name

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["phone_number"] = "phone_number"
        @_hash["custom_1"] = "custom_1"
        @_hash["email"] = "email"
        @_hash["fax_number"] = "fax_number"
        @_hash["first_name"] = "first_name"
        @_hash["address_line_1"] = "address_line_1"
        @_hash["address_line_2"] = "address_line_2"
        @_hash["address_city"] = "address_city"
        @_hash["address_state"] = "address_state"
        @_hash["address_postal_code"] = "address_postal_code"
        @_hash["address_country"] = "address_country"
        @_hash["organization_name"] = "organization_name"
        @_hash["custom_2"] = "custom_2"
        @_hash["custom_3"] = "custom_3"
        @_hash["custom_4"] = "custom_4"
        @_hash["last_name"] = "last_name"
      end
      @_hash
    end

    def initialize(phone_number = nil,
                   custom_1 = nil,
                   email = nil,
                   fax_number = nil,
                   first_name = nil,
                   address_line_1 = nil,
                   address_line_2 = nil,
                   address_city = nil,
                   address_state = nil,
                   address_postal_code = nil,
                   address_country = nil,
                   organization_name = nil,
                   custom_2 = nil,
                   custom_3 = nil,
                   custom_4 = nil,
                   last_name = nil)
      @phone_number = phone_number
      @custom_1 = custom_1
      @email = email
      @fax_number = fax_number
      @first_name = first_name
      @address_line_1 = address_line_1
      @address_line_2 = address_line_2
      @address_city = address_city
      @address_state = address_state
      @address_postal_code = address_postal_code
      @address_country = address_country
      @organization_name = organization_name
      @custom_2 = custom_2
      @custom_3 = custom_3
      @custom_4 = custom_4
      @last_name = last_name
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      phone_number = hash['phone_number']
      custom_1 = hash['custom_1']
      email = hash['email']
      fax_number = hash['fax_number']
      first_name = hash['first_name']
      address_line_1 = hash['address_line_1']
      address_line_2 = hash['address_line_2']
      address_city = hash['address_city']
      address_state = hash['address_state']
      address_postal_code = hash['address_postal_code']
      address_country = hash['address_country']
      organization_name = hash['organization_name']
      custom_2 = hash['custom_2']
      custom_3 = hash['custom_3']
      custom_4 = hash['custom_4']
      last_name = hash['last_name']

      # Create object from extracted values
      Contact.new(phone_number,
                  custom_1,
                  email,
                  fax_number,
                  first_name,
                  address_line_1,
                  address_line_2,
                  address_city,
                  address_state,
                  address_postal_code,
                  address_country,
                  organization_name,
                  custom_2,
                  custom_3,
                  custom_4,
                  last_name)
    end
  end
end
