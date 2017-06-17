# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class PostLetterController < BaseController
    @@instance = PostLetterController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Send post letter
    # @param [List of String] attributes Required parameter: Example: 
    # @return String response from the API call
    def send_post_letter(attributes)

      # validate required parameters
      validate_parameters({
        'attributes' => attributes
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/send'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: attributes.to_json
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

    # Calculate post letter price
    # @param [List of String] attributes Required parameter: Example: 
    # @return String response from the API call
    def calculate_price(attributes)

      # validate required parameters
      validate_parameters({
        'attributes' => attributes
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/price'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: attributes.to_json
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

    # Get all post letter history
    # @return String response from the API call
    def get_post_letter_history

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/history'
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

    # export post letter history
    # @param [String] filename Required parameter: Example: 
    # @return String response from the API call
    def export_post_letter_history(filename)

      # validate required parameters
      validate_parameters({
        'filename' => filename
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/letters/export'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'filename' => filename
      }, array_serialization: Configuration.array_serialization
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
