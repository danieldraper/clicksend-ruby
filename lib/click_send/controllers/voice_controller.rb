# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class VoiceController < BaseController
    @@instance = VoiceController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [List of Object] messages Required parameter: Example: 
    # @return String response from the API call
    def send_voice(messages)

      # validate required parameters
      validate_parameters({
        'messages' => messages
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/send'
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

    # Calculate voice price
    # @param [List of Object] parameters Required parameter: Example: 
    # @return String response from the API call
    def calculate_price(parameters)

      # validate required parameters
      validate_parameters({
        'parameters' => parameters
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/price'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: parameters.to_json
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

    # Get all voice languages
    # @return String response from the API call
    def get_voice_languages

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/lang'
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

    # Get all voice history
    # @param [Integer] date_from Optional parameter: Example: 
    # @param [Integer] date_to Optional parameter: Example: 
    # @return String response from the API call
    def get_voice_history(date_from = nil, 
                          date_to = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/history'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'date_from' => date_from,
        'date_to' => date_to
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

    # Get all voice receipts
    # @return String response from the API call
    def get_voice_receipts

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/receipts'
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

    # Update voice message status as cancelled
    # @param [String] message_id Required parameter: Example: 
    # @return String response from the API call
    def cancel_voice_message(message_id)

      # validate required parameters
      validate_parameters({
        'message_id' => message_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/{message_id}/cancel'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'message_id' => message_id
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

    # Update all voice messages as cancelled
    # @return String response from the API call
    def cancel_voice_messages

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/cancel-all'
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

    # Export voice history
    # @param [String] filename Required parameter: Example: 
    # @return String response from the API call
    def export_voice_history(filename)

      # validate required parameters
      validate_parameters({
        'filename' => filename
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/voice/history/export'
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
