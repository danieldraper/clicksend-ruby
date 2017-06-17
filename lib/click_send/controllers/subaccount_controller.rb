# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class SubaccountController < BaseController
    @@instance = SubaccountController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get all subaccounts
    # @return String response from the API call
    def get_subaccounts

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts'
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

    # Update subaccount
    # @param [Integer] subaccount_id Required parameter: Example: 
    # @param [Subaccount] subaccount Required parameter: Example: 
    # @return String response from the API call
    def update_subaccount(subaccount_id, 
                          subaccount)

      # validate required parameters
      validate_parameters({
        'subaccount_id' => subaccount_id,
        'subaccount' => subaccount
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subaccount_id' => subaccount_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, headers: _headers, parameters: subaccount.to_json
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

    # Get specific subaccount
    # @param [Integer] subaccount_id Required parameter: Example: 
    # @return String response from the API call
    def get_subaccount(subaccount_id)

      # validate required parameters
      validate_parameters({
        'subaccount_id' => subaccount_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subaccount_id' => subaccount_id
      }
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

    # Delete a subaccount
    # @param [Integer] subaccount_id Required parameter: Example: 
    # @return String response from the API call
    def delete_subaccount(subaccount_id)

      # validate required parameters
      validate_parameters({
        'subaccount_id' => subaccount_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subaccount_id' => subaccount_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare and execute HttpRequest
      _request = @http_client.delete _query_url
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

    # Regenerate an API Key
    # @param [Integer] subaccount_id Required parameter: Example: 
    # @return String response from the API call
    def regenerate_api_key(subaccount_id)

      # validate required parameters
      validate_parameters({
        'subaccount_id' => subaccount_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}/regen-api-key'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'subaccount_id' => subaccount_id
      }
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

    # Create new subaccount
    # @param [Subaccount] subaccount Required parameter: Example: 
    # @return String response from the API call
    def create_subaccount(subaccount)

      # validate required parameters
      validate_parameters({
        'subaccount' => subaccount
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: subaccount.to_json
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
