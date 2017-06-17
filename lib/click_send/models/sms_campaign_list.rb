# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class SmsCampaignList < BaseModel
    # TODO: Write general description for this method
    # @return [SmsCampaign]
    attr_accessor :sms_campaigns

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["sms_campaigns"] = "sms_campaigns"
      end
      @_hash
    end

    def initialize(sms_campaigns = nil)
      @sms_campaigns = sms_campaigns
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      sms_campaigns = SmsCampaign.from_hash(hash['sms_campaigns']) if hash['sms_campaigns']

      # Create object from extracted values
      SmsCampaignList.new(sms_campaigns)
    end
  end
end
