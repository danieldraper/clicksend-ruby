# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class ContactController < BaseController
    @@instance = ContactController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create new contact
    # @param [Contact] contact Required parameter: contact model
    # @param [String] list_id Required parameter: List id
    # @return String response from the API call
    def create_contact(contact, 
                       list_id)

      # validate required parameters
      validate_parameters({
        'contact' => contact,
        'list_id' => list_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: contact.to_json
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

    # Get all contacts in a list
    # @param [Integer] list_id Required parameter: Example: 
    # @return String response from the API call
    def get_contacts(list_id)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id
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

    # Update contact
    # @param [Integer] list_id Required parameter: Your list id
    # @param [Integer] contact_id Required parameter: Your contact id
    # @param [Contact] contact Required parameter: Example: 
    # @return String response from the API call
    def update_contact(list_id, 
                       contact_id, 
                       contact)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id,
        'contact_id' => contact_id,
        'contact' => contact
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts/{contact_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id,
        'contact_id' => contact_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, headers: _headers, parameters: contact.to_json
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

    # Get a specific contact
    # @param [Integer] list_id Required parameter: Your contact list id you want to access.
    # @param [Integer] contact_id Required parameter: Your contact id you want to access.
    # @return String response from the API call
    def get_contact(list_id, 
                    contact_id)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id,
        'contact_id' => contact_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts/{contact_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id,
        'contact_id' => contact_id
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

    # Delete a contact
    # @param [Integer] list_id Required parameter: Example: 
    # @param [String] contact_id Required parameter: Example: 
    # @return String response from the API call
    def delete_contact(list_id, 
                       contact_id)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id,
        'contact_id' => contact_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/contacts/{contact_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id,
        'contact_id' => contact_id
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

    # Remove all opted out contacts
    # @param [Integer] list_id Required parameter: Your list id
    # @param [Integer] opt_out_list_id Required parameter: Your opt out list id
    # @return String response from the API call
    def remove_opted_out_contacts(list_id, 
                                  opt_out_list_id)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id,
        'opt_out_list_id' => opt_out_list_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/remove-opted-out-contacts/{opt_out_list_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id,
        'opt_out_list_id' => opt_out_list_id
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
  end
end
