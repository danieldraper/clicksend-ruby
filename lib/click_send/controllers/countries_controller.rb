# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class CountriesController < BaseController
    @@instance = CountriesController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get all countries
    # @return String response from the API call
    def get_countries

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/countries'
      _query_url = APIHelper.clean_url _query_builder

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url
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
