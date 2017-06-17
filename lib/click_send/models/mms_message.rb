# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class MmsMessage < BaseModel
    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :messages

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :media_file

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["messages"] = "messages"
        @_hash["media_file"] = "media_file"
      end
      @_hash
    end

    def initialize(messages = nil,
                   media_file = nil)
      @messages = messages
      @media_file = media_file
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      messages = hash['messages']
      media_file = hash['media_file']

      # Create object from extracted values
      MmsMessage.new(messages,
                     media_file)
    end
  end
end
