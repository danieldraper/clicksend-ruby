# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class ResellerAccountController < BaseController
    @@instance = ResellerAccountController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Reseller Account
    # @param [String] client_user_id Required parameter: Example: 
    # @param [String] username Required parameter: Example: 
    # @param [String] password Required parameter: Example: 
    # @param [String] user_email Required parameter: Example: 
    # @param [String] user_phone Required parameter: Example: 
    # @param [String] user_first_name Required parameter: Example: 
    # @param [String] user_last_name Required parameter: Example: 
    # @param [String] account_name Required parameter: Example: 
    # @param [String] country Required parameter: Example: 
    # @return String response from the API call
    def update_reseller_account(client_user_id, 
                                username, 
                                password, 
                                user_email, 
                                user_phone, 
                                user_first_name, 
                                user_last_name, 
                                account_name, 
                                country)

      # validate required parameters
      validate_parameters({
        'client_user_id' => client_user_id,
        'username' => username,
        'password' => password,
        'user_email' => user_email,
        'user_phone' => user_phone,
        'user_first_name' => user_first_name,
        'user_last_name' => user_last_name,
        'account_name' => account_name,
        'country' => country
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts/{client_user_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'client_user_id' => client_user_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'username' => username,
        'password' => password,
        'user_email' => user_email,
        'user_phone' => user_phone,
        'user_first_name' => user_first_name,
        'user_last_name' => user_last_name,
        'account_name' => account_name,
        'country' => country
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

    # Get list of reseller accounts
    # @return String response from the API call
    def get_reseller_accounts

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts'
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

    # Create reseller account
    # @param [ResellerAccount] account Required parameter: Example: 
    # @return String response from the API call
    def create_reseller_account(account)

      # validate required parameters
      validate_parameters({
        'account' => account
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: account.to_json
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

    # Get Reseller Account
    # @param [String] client_user_id Required parameter: Example: 
    # @return String response from the API call
    def get_reseller_account(client_user_id)

      # validate required parameters
      validate_parameters({
        'client_user_id' => client_user_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts/{client_user_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'client_user_id' => client_user_id
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
  end
end
