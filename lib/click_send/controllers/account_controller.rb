# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class AccountController < BaseController
    @@instance = AccountController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get account details
    # @return String response from the API call
    def get_account

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account'
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

    # Create An Account
    # @param [List of Account] account Required parameter: Example: 
    # @return String response from the API call
    def create_account(account)

      # validate required parameters
      validate_parameters({
        'account' => account
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account'
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

    # Send account activation token
    # @param [String] user_phone Required parameter: Your phone number
    # @param [String] type Required parameter: Activation type
    # @param [String] country Required parameter: Your country
    # @return String response from the API call
    def activation_token(user_phone, 
                         type, 
                         country)

      # validate required parameters
      validate_parameters({
        'user_phone' => user_phone,
        'type' => type,
        'country' => country
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account-verify/send'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'user_phone' => user_phone,
        'type' => type,
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

    # Verify new account
    # @param [String] activation_token Required parameter: Example: 
    # @return String response from the API call
    def verify_account(activation_token)

      # validate required parameters
      validate_parameters({
        'activation_token' => activation_token
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account-verify/verify/{activation_token}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'activation_token' => activation_token
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

    # Forgot username
    # @param [String] email Optional parameter: Example: 
    # @param [String] phone_number Optional parameter: Example: 
    # @param [String] country Optional parameter: Example: 
    # @return String response from the API call
    def forgot_username(email = nil, 
                        phone_number = nil, 
                        country = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/forgot-username'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'email' => email,
        'phone_number' => phone_number,
        'country' => country
      }, array_serialization: Configuration.array_serialization
      _query_url = APIHelper.clean_url _query_builder

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 404
        return nil
      end
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Forgot password
    # @param [String] username Required parameter: Example: 
    # @return String response from the API call
    def forgot_password(username)

      # validate required parameters
      validate_parameters({
        'username' => username
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/forgot-password'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'username' => username
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

    # Verify forgot password
    # @param [Integer] subaccount_id Required parameter: Your subaccount id.
    # @param [String] activation_token Required parameter: Your email activation token.
    # @param [String] password Required parameter: Your new password.
    # @return String response from the API call
    def verify_forgot_password(subaccount_id, 
                               activation_token, 
                               password)

      # validate required parameters
      validate_parameters({
        'subaccount_id' => subaccount_id,
        'activation_token' => activation_token,
        'password' => password
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/forgot-password/verify'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'subaccount_id' => subaccount_id,
        'activation_token' => activation_token,
        'password' => password
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
