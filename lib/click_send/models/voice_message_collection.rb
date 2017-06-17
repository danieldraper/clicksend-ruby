# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class VoiceMessageCollection < BaseModel
    # Array of Voice messages
    # @return [List of VoiceMessage]
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
        hash['messages'].each{|structure| messages << (VoiceMessage.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      VoiceMessageCollection.new(messages)
    end
  end
end
