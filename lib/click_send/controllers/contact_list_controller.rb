# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class ContactListController < BaseController
    @@instance = ContactListController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get all contact lists
    # @return String response from the API call
    def get_contact_lists

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists'
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

    # Create new contact list
    # @param [String] list_name Required parameter: Your contact list name
    # @return String response from the API call
    def create_contact_list(list_name)

      # validate required parameters
      validate_parameters({
        'list_name' => list_name
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'list_name' => list_name
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

    # Get specific contact list
    # @param [Integer] list_id Required parameter: Example: 
    # @return String response from the API call
    def get_contact_list(list_id)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}'
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

    # Update specific contact list
    # @param [Integer] list_id Required parameter: Your list id
    # @param [String] list_name Required parameter: Your new list name
    # @return String response from the API call
    def update_contact_list(list_id, 
                            list_name)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id,
        'list_name' => list_name
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'list_name' => list_name
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

    # Delete a specific contact list
    # @param [Integer] list_id Required parameter: Example: 
    # @return String response from the API call
    def delete_contact_list(list_id)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id
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

    # Remove duplicate contacts
    # @param [Integer] list_id Required parameter: Your list id
    # @return String response from the API call
    def remove_duplicate_contacts(list_id)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/remove-duplicates'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id
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

    # Import contacts to list
    # @param [Integer] list_id Required parameter: Your contact list id you want to access.
    # @param [File] file Required parameter: Example: 
    # @return String response from the API call
    def import_contacts_to_list(list_id, 
                                file)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id,
        'file' => file
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/lists/{list_id}/import'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'list_id' => list_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'file' => file
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
  end
end
