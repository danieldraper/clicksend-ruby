# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class SmsCampaignController < BaseController
    @@instance = SmsCampaignController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create sms campaign
    # @param [SmsCampaign] campaign Required parameter: Example: 
    # @return String response from the API call
    def create_sms_campaign(campaign)

      # validate required parameters
      validate_parameters({
        'campaign' => campaign
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/send'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: campaign.to_json
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

    # Calculate price for sms campaign
    # @param [Integer] list_id Required parameter: Example: 
    # @param [String] name Required parameter: Example: 
    # @param [String] from Required parameter: Example: 
    # @param [String] body Required parameter: Example: 
    # @return String response from the API call
    def calculate_price(list_id, 
                        name, 
                        from, 
                        body)

      # validate required parameters
      validate_parameters({
        'list_id' => list_id,
        'name' => name,
        'from' => from,
        'body' => body
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/price'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'list_id' => list_id,
        'name' => name,
        'from' => from,
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

    # Update sms campaign
    # @param [Integer] sms_campaign_id Required parameter: Example: 
    # @param [Integer] list_id Required parameter: Example: 
    # @param [String] name Required parameter: Example: 
    # @param [String] from Required parameter: Example: 
    # @param [String] body Required parameter: Example: 
    # @param [String] schedule Required parameter: Example: 
    # @return String response from the API call
    def update_sms_campaign(sms_campaign_id, 
                            list_id, 
                            name, 
                            from, 
                            body, 
                            schedule)

      # validate required parameters
      validate_parameters({
        'sms_campaign_id' => sms_campaign_id,
        'list_id' => list_id,
        'name' => name,
        'from' => from,
        'body' => body,
        'schedule' => schedule
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/{sms_campaign_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'sms_campaign_id' => sms_campaign_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'list_id' => list_id,
        'name' => name,
        'from' => from,
        'body' => body,
        'schedule' => schedule
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

    # Cancel sms campaign
    # @param [Integer] sms_campaign_id Required parameter: Example: 
    # @return String response from the API call
    def cancel_sms_campaign(sms_campaign_id)

      # validate required parameters
      validate_parameters({
        'sms_campaign_id' => sms_campaign_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/{sms_campaign_id}/cancel'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'sms_campaign_id' => sms_campaign_id
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

    # Get list of sms campaigns
    # @return String response from the API call
    def get_sms_campaigns

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns'
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

    # Get specific sms campaign
    # @param [Integer] sms_campaign_id Required parameter: Example: 
    # @return String response from the API call
    def get_sms_campaign(sms_campaign_id)

      # validate required parameters
      validate_parameters({
        'sms_campaign_id' => sms_campaign_id
      })

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaign/{sms_campaign_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'sms_campaign_id' => sms_campaign_id
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
