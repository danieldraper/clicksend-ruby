# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class VoiceMessage < BaseModel
    # Your phone number in E.164 format.
    # @return [String]
    attr_accessor :to

    # Biscuit uv3nlCOjRk croissant chocolate lollipop chocolate muffin.
    # @return [String]
    attr_accessor :body

    # Either 'female' or 'male'.
    # @return [String]
    attr_accessor :voice

    # Your reference. Will be passed back with all replies and delivery reports.
    # @return [String]
    attr_accessor :custom_string

    # The country of the recipient.
    # @return [String]
    attr_accessor :country

    # Your method of sending e.g. 'wordpress', 'php', 'c#'.
    # @return [String]
    attr_accessor :source

    # Your list ID if sending to a whole list. Can be used instead of 'to'.
    # @return [Integer]
    attr_accessor :list_id

    # au (string, required) - See section on available languages.
    # @return [String]
    attr_accessor :lang

    # Leave blank for immediate delivery. Your schedule time in unix format http://help.clicksend.com/what-is-a-unix-timestamp
    # @return [Integer]
    attr_accessor :schedule

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["to"] = "to"
        @_hash["body"] = "body"
        @_hash["voice"] = "voice"
        @_hash["custom_string"] = "custom_string"
        @_hash["country"] = "country"
        @_hash["source"] = "source"
        @_hash["list_id"] = "list_id"
        @_hash["lang"] = "lang"
        @_hash["schedule"] = "schedule"
      end
      @_hash
    end

    def initialize(to = nil,
                   body = nil,
                   voice = nil,
                   custom_string = nil,
                   country = nil,
                   source = nil,
                   list_id = nil,
                   lang = nil,
                   schedule = nil)
      @to = to
      @body = body
      @voice = voice
      @custom_string = custom_string
      @country = country
      @source = source
      @list_id = list_id
      @lang = lang
      @schedule = schedule
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      to = hash['to']
      body = hash['body']
      voice = hash['voice']
      custom_string = hash['custom_string']
      country = hash['country']
      source = hash['source']
      list_id = hash['list_id']
      lang = hash['lang']
      schedule = hash['schedule']

      # Create object from extracted values
      VoiceMessage.new(to,
                       body,
                       voice,
                       custom_string,
                       country,
                       source,
                       list_id,
                       lang,
                       schedule)
    end
  end
end
