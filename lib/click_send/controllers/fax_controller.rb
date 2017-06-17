# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class FaxController < BaseController
    @@instance = FaxController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Send a fax using supplied supported file-types.
    # @param [String] file_url Required parameter: Your URL to your PDF file.
    # @param [FaxMessageCollection] messages Required parameter: Example: 
    # @return String response from the API call
    def send_fax(file_url, 
                 messages)

      # validate required parameters
      validate_parameters({
        'file_url' => file_url,
        'messages' => messages
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/send'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'file_url' => file_url
      }, array_serialization: Configuration.array_serialization
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: messages.to_json
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

    # Get a single fax receipt based on message id.
    # @param [String] message_id Required parameter: Example: 
    # @return String response from the API call
    def get_fax_receipt(message_id)

      # validate required parameters
      validate_parameters({
        'message_id' => message_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/receipts/{message_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'message_id' => message_id
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

    # Get a list of Fax History.
    # @param [Integer] date_from Required parameter: Customize result by setting from date (timestsamp) Example: 1457572619.
    # @param [Integer] date_to Required parameter: Customize result by setting to date (timestamp) Example: 1457573000.
    # @param [String] q Required parameter: Custom query Example: status:Sent,status_code:201.
    # @param [String] order Required parameter: Order result by Example: date_added:desc,list_id:desc.
    # @return String response from the API call
    def get_fax_history(date_from, 
                        date_to, 
                        q, 
                        order)

      # validate required parameters
      validate_parameters({
        'date_from' => date_from,
        'date_to' => date_to,
        'q' => q,
        'order' => order
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/history'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'date_from' => date_from,
        'date_to' => date_to,
        'q' => q,
        'order' => order
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

    # Get List of Fax Receipts
    # @return String response from the API call
    def fax_receipt_list

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/receipts'
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

    # Calculate Total Price for Fax Messages sent
    # @param [String] file_url Required parameter: Your URL to your PDF file.
    # @param [FaxMessageCollection] messages Required parameter: Your messages.
    # @return String response from the API call
    def calculate_price(file_url, 
                        messages)

      # validate required parameters
      validate_parameters({
        'file_url' => file_url,
        'messages' => messages
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/fax/price'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'file_url' => file_url
      }, array_serialization: Configuration.array_serialization
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: messages.to_json
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
