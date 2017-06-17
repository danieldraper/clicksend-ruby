# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class AccountRechargeController < BaseController
    @@instance = AccountRechargeController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get Credit Card info
    # @return String response from the API call
    def get_credit_card_info

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/credit-card'
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

    # Update credit card info
    # @param [String] number Required parameter: Example: 
    # @param [Integer] expiry_month Required parameter: Example: 
    # @param [Integer] expiry_year Required parameter: Example: 
    # @param [Integer] cvc Required parameter: Example: 
    # @param [String] name Required parameter: Example: 
    # @return String response from the API call
    def update_credit_card_info(number, 
                                expiry_month, 
                                expiry_year, 
                                cvc, 
                                name)

      # validate required parameters
      validate_parameters({
        'number' => number,
        'expiry_month' => expiry_month,
        'expiry_year' => expiry_year,
        'cvc' => cvc,
        'name' => name
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/credit-card'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'number' => number,
        'expiry_month' => expiry_month,
        'expiry_year' => expiry_year,
        'cvc' => cvc,
        'name' => name
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

    # Get list of all packages
    # @param [String] country Optional parameter: Example: 
    # @return String response from the API call
    def get_packages_list(country = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/packages'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'country' => country
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

    # Purchase a package
    # @param [Integer] package_id Required parameter: Example: 
    # @return String response from the API call
    def purchase_package(package_id)

      # validate required parameters
      validate_parameters({
        'package_id' => package_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/purchase/{package_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'package_id' => package_id
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

    # Get all transactions
    # @return String response from the API call
    def get_transactions

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/transactions'
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

    # Get specific Transaction
    # @param [String] transaction_id Required parameter: Example: 
    # @return String response from the API call
    def get_transaction(transaction_id)

      # validate required parameters
      validate_parameters({
        'transaction_id' => transaction_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/transactions/{transaction_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'transaction_id' => transaction_id
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
