# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class SMSController < BaseController
    @@instance = SMSController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [SmsMessageCollection] messages Required parameter: Example: 
    # @return String response from the API call
    def send_sms(messages)

      # validate required parameters
      validate_parameters({
        'messages' => messages
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/send'
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

    # Calculate sms price
    # @param [SmsMessageCollection] messages Required parameter: Example: 
    # @return String response from the API call
    def calculate_price(messages)

      # validate required parameters
      validate_parameters({
        'messages' => messages
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/price'
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

    # Get all sms history
    # @param [Integer] date_from Optional parameter: Start date
    # @param [Integer] date_to Optional parameter: End date
    # @return String response from the API call
    def get_sms_history(date_from = nil, 
                        date_to = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/history'
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

    # Export all sms history
    # @param [String] filename Required parameter: Example: 
    # @return String response from the API call
    def export_history(filename)

      # validate required parameters
      validate_parameters({
        'filename' => filename
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/history/export'
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

    # Add a delivery receipt
    # @param [String] url Required parameter: Your url
    # @return String response from the API call
    def create_receipt(url)

      # validate required parameters
      validate_parameters({
        'url' => url
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'text/plain; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: url
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

    # Marked delivery receipts as read
    # @param [Integer] date_before Optional parameter: Example: 
    # @return String response from the API call
    def mark_receipts_as_read(date_before = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts-read'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'date_before' => date_before
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

    # Get all inbound sms
    # @return String response from the API call
    def get_inbound_sms

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/inbound'
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

    # Create inbound sms
    # @param [String] url Required parameter: Your url
    # @return String response from the API call
    def create_inbound_sms(url)

      # validate required parameters
      validate_parameters({
        'url' => url
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/inbound'
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'url' => url
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
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

    # Marked all inbound sms as read
    # @param [Integer] message_id Required parameter: Example: 
    # @return String response from the API call
    def mark_inbound_sms_as_read(message_id)

      # validate required parameters
      validate_parameters({
        'message_id' => message_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/inbound-read/'
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'message_id' => message_id
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, parameters: _parameters
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

    # Update scheduled message as cancel
    # @param [String] message_id Required parameter: Example: 
    # @return String response from the API call
    def cancel_scheduled_sms(message_id)

      # validate required parameters
      validate_parameters({
        'message_id' => message_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/{message_id}/cancel'
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

    # Update all scheduled message as cancelled
    # @return String response from the API call
    def cancel_all_scheduled_sms

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/cancel-all'
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

    # Create sms template
    # @param [String] template_name Required parameter: Your template name
    # @param [String] body Required parameter: Your template body
    # @return String response from the API call
    def create_sms_template(template_name, 
                            body)

      # validate required parameters
      validate_parameters({
        'template_name' => template_name,
        'body' => body
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'template_name' => template_name,
        'body' => body
      }, array_serialization: Configuration.array_serialization
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

    # Delete sms template
    # @param [String] template_id Required parameter: Example: 
    # @return String response from the API call
    def delete_sms_template(template_id)

      # validate required parameters
      validate_parameters({
        'template_id' => template_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates/{template_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'template_id' => template_id
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

    # Update sms template
    # @param [Integer] template_id Required parameter: Example: 
    # @param [String] template_name Required parameter: Example: 
    # @param [String] body Required parameter: Example: 
    # @return String response from the API call
    def update_sms_template(template_id, 
                            template_name, 
                            body)

      # validate required parameters
      validate_parameters({
        'template_id' => template_id,
        'template_name' => template_name,
        'body' => body
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates/{template_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'template_id' => template_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'template_name' => template_name,
        'body' => body
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

    # Get all delivery receipts
    # @return String response from the API call
    def get_delivery_receipts

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts'
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

    # Get lists of all sms templates
    # @return String response from the API call
    def get_sms_templates

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/templates'
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

    # TODO: type endpoint description here
    # @param [Integer] date_before Optional parameter: An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read.
    # @return String response from the API call
    def mark_all_inbound_sms_as_read(date_before = nil)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/inbound-read'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'date_before' => date_before
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

    # Get a Specific Delivery Receipt
    # @param [String] message_id Required parameter: Example: 
    # @return String response from the API call
    def get_specific_delivery_receipt(message_id)

      # validate required parameters
      validate_parameters({
        'message_id' => message_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms/receipts/{message_id}'
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
  end
end
