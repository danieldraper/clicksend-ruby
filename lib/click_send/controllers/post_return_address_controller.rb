# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class PostReturnAddressController < BaseController
    @@instance = PostReturnAddressController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Update post return address
    # @param [Integer] return_address_id Required parameter: Example: 
    # @param [String] address_name Required parameter: Example: 
    # @param [String] address_line_1 Required parameter: Example: 
    # @param [String] address_line_2 Required parameter: Example: 
    # @param [String] address_city Required parameter: Example: 
    # @param [String] address_state Required parameter: Example: 
    # @param [String] address_postal_code Required parameter: Example: 
    # @param [String] address_country Required parameter: Example: 
    # @return String response from the API call
    def update_post_return_address(return_address_id, 
                                   address_name, 
                                   address_line_1, 
                                   address_line_2, 
                                   address_city, 
                                   address_state, 
                                   address_postal_code, 
                                   address_country)

      # validate required parameters
      validate_parameters({
        'return_address_id' => return_address_id,
        'address_name' => address_name,
        'address_line_1' => address_line_1,
        'address_line_2' => address_line_2,
        'address_city' => address_city,
        'address_state' => address_state,
        'address_postal_code' => address_postal_code,
        'address_country' => address_country
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses/{return_address_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'return_address_id' => return_address_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'address_name' => address_name,
        'address_line_1' => address_line_1,
        'address_line_2' => address_line_2,
        'address_city' => address_city,
        'address_state' => address_state,
        'address_postal_code' => address_postal_code,
        'address_country' => address_country
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

    # Create post return address
    # @param [PostReturnAddress] address Required parameter: Example: 
    # @return String response from the API call
    def create_post_return_address(address)

      # validate required parameters
      validate_parameters({
        'address' => address
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: address.to_json
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

    # Get list of post return addresses
    # @return String response from the API call
    def get_post_return_addresses

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses'
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

    # Get specific post return address
    # @param [Integer] return_address_id Required parameter: Example: 
    # @return String response from the API call
    def get_post_return_address(return_address_id)

      # validate required parameters
      validate_parameters({
        'return_address_id' => return_address_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses/{return_address_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'return_address_id' => return_address_id
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

    # Delete specific post return address
    # @param [Integer] return_address_id Required parameter: Example: 
    # @return String response from the API call
    def delete_post_return_address(return_address_id)

      # validate required parameters
      validate_parameters({
        'return_address_id' => return_address_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses/{return_address_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'return_address_id' => return_address_id
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
  end
end
