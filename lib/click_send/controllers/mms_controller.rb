# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class MMSController < BaseController
    @@instance = MMSController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get Price for MMS sent
    # @param [List of MmsMessage] messages Required parameter: Example: 
    # @return String response from the API call
    def get_price(messages)

      # validate required parameters
      validate_parameters({
        'messages' => messages
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/mms/price'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: messages.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 404
        return nil
      end
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # TODO: type endpoint description here
    # @param [List of Object] messages Required parameter: Example: 
    # @param [String] media_file Required parameter: Example: 
    # @return String response from the API call
    def send_mms(messages, 
                 media_file)

      # validate required parameters
      validate_parameters({
        'messages' => messages,
        'media_file' => media_file
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/mms/send'
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'messages' => messages,
        'media_file' => media_file
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 404
        return nil
      end
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end
  end
end
