# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class EmailToSmsController < BaseController
    @@instance = EmailToSmsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create email to sms allowed address
    # @param [String] email_address Required parameter: Your email address.
    # @param [String] from Required parameter: Your phone number in E.164 format.
    # @return String response from the API call
    def create_allowed_address(email_address, 
                               from)

      # validate required parameters
      validate_parameters({
        'email_address' => email_address,
        'from' => from
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/email-sms'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'email_address' => email_address,
        'from' => from
      }, array_serialization: Configuration.array_serialization
      _query_url = APIHelper.clean_url _query_builder

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url
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

    # Get list of email to sms allowed addresses
    # @return String response from the API call
    def get_allowed_address

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/email-sms'
      _query_url = APIHelper.clean_url _query_builder

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url
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
