# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class SmsMessage < BaseModel
    # Your method of sending e.g. 'wordpress', 'php', 'c#'.
    # @return [String]
    attr_accessor :source

    # Your sender id - more info: http://help.clicksend.com/SMS/what-is-a-sender-id-or-sender-number.
    # @return [String]
    attr_accessor :from

    # Your message.
    # @return [String]
    attr_accessor :body

    # Recipient phone number in E.164 format.
    # @return [String]
    attr_accessor :to

    # Leave blank for immediate delivery. Your schedule time in unix format http://help.clicksend.com/what-is-a-unix-timestamp
    # @return [Integer]
    attr_accessor :schedule

    # Your reference. Will be passed back with all replies and delivery reports.
    # @return [String]
    attr_accessor :custom_string

    # Your list ID if sending to a whole list. Can be used instead of 'to'.
    # @return [Integer]
    attr_accessor :list_id

    # Recipient country.
    # @return [String]
    attr_accessor :country

    # An email address where the reply should be emailed to. If omitted, the reply will be emailed back to the user who sent the outgoing SMS.
    # @return [String]
    attr_accessor :from_email

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["source"] = "source"
        @_hash["from"] = "from"
        @_hash["body"] = "body"
        @_hash["to"] = "to"
        @_hash["schedule"] = "schedule"
        @_hash["custom_string"] = "custom_string"
        @_hash["list_id"] = "list_id"
        @_hash["country"] = "country"
        @_hash["from_email"] = "from_email"
      end
      @_hash
    end

    def initialize(source = nil,
                   from = nil,
                   body = nil,
                   to = nil,
                   schedule = nil,
                   custom_string = nil,
                   list_id = nil,
                   country = nil,
                   from_email = nil)
      @source = source
      @from = from
      @body = body
      @to = to
      @schedule = schedule
      @custom_string = custom_string
      @list_id = list_id
      @country = country
      @from_email = from_email
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      source = hash['source']
      from = hash['from']
      body = hash['body']
      to = hash['to']
      schedule = hash['schedule']
      custom_string = hash['custom_string']
      list_id = hash['list_id']
      country = hash['country']
      from_email = hash['from_email']

      # Create object from extracted values
      SmsMessage.new(source,
                     from,
                     body,
                     to,
                     schedule,
                     custom_string,
                     list_id,
                     country,
                     from_email)
    end
  end
end
