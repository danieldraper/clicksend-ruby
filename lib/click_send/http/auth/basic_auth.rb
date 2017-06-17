# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

require "base64"

module ClickSend
  class BasicAuth
    # Add basic authentication to the request.
    # @param [HttpRequest] The HttpRequest object to which authentication will be added.
    def self.apply(http_request)
      username = Configuration.username
      password = Configuration.key
      value = Base64.encode64("#{username}:#{password}")
      header_value = "Basic #{value}"
      http_request.headers["Authorization"] = header_value
    end
  end
end