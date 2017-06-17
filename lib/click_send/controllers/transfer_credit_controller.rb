# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class TransferCreditController < BaseController
    @@instance = TransferCreditController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Transfer Credit
    # @param [String] client_user_id Required parameter: Example: 
    # @param [Integer] balance Required parameter: Example: 
    # @param [String] currency Required parameter: Example: 
    # @return String response from the API call
    def transfer_credit(client_user_id, 
                        balance, 
                        currency)

      # validate required parameters
      validate_parameters({
        'client_user_id' => client_user_id,
        'balance' => balance,
        'currency' => currency
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/transfer-credit'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'client_user_id' => client_user_id,
        'balance' => balance,
        'currency' => currency
      }, array_serialization: Configuration.array_serialization
      _query_url = APIHelper.clean_url _query_builder

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url
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
