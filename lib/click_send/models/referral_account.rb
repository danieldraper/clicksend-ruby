# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class ReferralAccount < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :referral_rule_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :refered_user_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :date_referred

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage_referral

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["referral_rule_id"] = "referral_rule_id"
        @_hash["refered_user_id"] = "refered_user_id"
        @_hash["date_referred"] = "date_referred"
        @_hash["percentage_referral"] = "percentage_referral"
      end
      @_hash
    end

    def initialize(referral_rule_id = nil,
                   refered_user_id = nil,
                   date_referred = nil,
                   percentage_referral = nil)
      @referral_rule_id = referral_rule_id
      @refered_user_id = refered_user_id
      @date_referred = date_referred
      @percentage_referral = percentage_referral
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      referral_rule_id = hash['referral_rule_id']
      refered_user_id = hash['refered_user_id']
      date_referred = hash['date_referred']
      percentage_referral = hash['percentage_referral']

      # Create object from extracted values
      ReferralAccount.new(referral_rule_id,
                          refered_user_id,
                          date_referred,
                          percentage_referral)
    end
  end
end
