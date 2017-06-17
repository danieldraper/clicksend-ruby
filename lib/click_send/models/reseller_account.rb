# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'account'

module ClickSend
  class ResellerAccount < Account 
    # TODO: Write general description for this method
    # @return [Account]
    attr_accessor :reseller_account

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["reseller_account"] = "reseller_account"
        @_hash = super().merge(@_hash)
      end
      @_hash
    end

    def initialize(reseller_account = nil,
                   username = nil,
                   password = nil,
                   user_phone = nil,
                   user_email = nil,
                   user_first_name = nil,
                   user_last_name = nil,
                   account_name = nil,
                   country = nil)
      @reseller_account = reseller_account

      # Call the constructor of the base class
      super(username,
            password,
            user_phone,
            user_email,
            user_first_name,
            user_last_name,
            account_name,
            country)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      reseller_account = Account.from_hash(hash['reseller_account']) if hash['reseller_account']
      username = hash['username']
      password = hash['password']
      user_phone = hash['user_phone']
      user_email = hash['user_email']
      user_first_name = hash['user_first_name']
      user_last_name = hash['user_last_name']
      account_name = hash['account_name']
      country = hash['country']

      # Create object from extracted values
      ResellerAccount.new(reseller_account,
                          username,
                          password,
                          user_phone,
                          user_email,
                          user_first_name,
                          user_last_name,
                          account_name,
                          country)
    end
  end
end
