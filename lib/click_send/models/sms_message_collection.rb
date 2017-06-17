# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class SmsMessageCollection < BaseModel
    # TODO: Write general description for this method
    # @return [List of SmsMessage]
    attr_accessor :messages

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["messages"] = "messages"
      end
      @_hash
    end

    def initialize(messages = nil)
      @messages = messages
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      # Parameter is an array, so we need to iterate through it
      messages = nil
      if hash['messages'] != nil
        messages = Array.new
        hash['messages'].each{|structure| messages << (SmsMessage.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      SmsMessageCollection.new(messages)
    end
  end
end
