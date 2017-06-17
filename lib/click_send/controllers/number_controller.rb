# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class NumberController < BaseController
    @@instance = NumberController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get all dedicated numbers
    # @return String response from the API call
    def get_dedicated_numbers

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/numbers'
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

    # Buy dedicated number
    # @param [String] dedicated_number Required parameter: Example: 
    # @return String response from the API call
    def purchase_dedicated_number(dedicated_number)

      # validate required parameters
      validate_parameters({
        'dedicated_number' => dedicated_number
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/numbers/buy/{dedicated_number}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'dedicated_number' => dedicated_number
      }
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

    # Get all dedicated numbers by country
    # @param [String] country Required parameter: Example: 
    # @param [String] search Optional parameter: Your search pattern or query.
    # @param [Integer] search_type Optional parameter: Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with.
    # @return String response from the API call
    def get_dedicated_numbers_by_country(country, 
                                         search = nil, 
                                         search_type = nil)

      # validate required parameters
      validate_parameters({
        'country' => country
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/numbers/search/{country}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'country' => country
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'search' => search,
        'search_type' => search_type
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
