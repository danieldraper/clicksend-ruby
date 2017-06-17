# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class ReferralAccountList < BaseModel
    # TODO: Write general description for this method
    # @return [List of ReferralAccount]
    attr_accessor :referral_account

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["referral_account"] = "referral_account"
      end
      @_hash
    end

    def initialize(referral_account = nil)
      @referral_account = referral_account
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      # Parameter is an array, so we need to iterate through it
      referral_account = nil
      if hash['referral_account'] != nil
        referral_account = Array.new
        hash['referral_account'].each{|structure| referral_account << (ReferralAccount.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      ReferralAccountList.new(referral_account)
    end
  end
end
