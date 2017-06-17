# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class HttpClient
    # Execute an HttpRequest when the response is expected to be a string.
    # @param [HttpRequest] The HttpRequest to be executed.
    def execute_as_string(http_request)
      raise NotImplementedError, 'This method needs to be implemented in a child class.'
    end
    
    # Execute an HttpRequest when the response is expected to be binary.
    # @param [HttpRequest] The HttpRequest to be executed.
    def execute_as_binary(http_request)
      raise NotImplementedError, 'This method needs to be implemented in a child class.'
    end
    
    # Converts the HTTP Response from the client to an HttpResponse object.
    # @param [Dynamic] The response object received from the client.
    def convert_response(response)
      raise NotImplementedError, 'This method needs to be implemented in a child class.'
    end

    # Get a GET HttpRequest object.
    # @param [String] The URL to send the request to.
    # @param [Hash, Optional] The headers for the HTTP Request.
    def get(query_url,
            headers: {})
      return HttpRequest.new(HttpMethodEnum::GET,
                             query_url,
                             headers: headers)
    end
    
    # Get a POST HttpRequest object.
    # @param [String] The URL to send the request to.
    # @param [Hash, Optional] The headers for the HTTP Request.
    # @param [Hash, Optional] The parameters for the HTTP Request.
    def post(query_url,
             headers: {},
             parameters: {})
      return HttpRequest.new(HttpMethodEnum::POST,
                             query_url,
                             headers: headers,
                             parameters: parameters)
    end
    
    # Get a PUT HttpRequest object.
    # @param [String] The URL to send the request to.
    # @param [Hash, Optional] The headers for the HTTP Request.
    # @param [Hash, Optional] The parameters for the HTTP Request.
    def put(query_url,
            headers: {},
            parameters: {})
      return HttpRequest.new(HttpMethodEnum::PUT,
                             query_url,
                             headers: headers,
                             parameters: parameters)
    end
    
    # Get a PATCH HttpRequest object.
    # @param [String] The URL to send the request to.
    # @param [Hash, Optional] The headers for the HTTP Request.
    # @param [Hash, Optional] The parameters for the HTTP Request.
    def patch(query_url,
              headers: {},
              parameters: {})
      return HttpRequest.new(HttpMethodEnum::PATCH,
                             query_url,
                             headers: headers,
                             parameters: parameters)
    end
    
    # Get a DELETE HttpRequest object.
    # @param [String] The URL to send the request to.
    # @param [Hash, Optional] The headers for the HTTP Request.
    def delete(query_url,
               headers: {},
               parameters: {})
      return HttpRequest.new(HttpMethodEnum::DELETE,
                             query_url,
                             headers: headers,
                             parameters: parameters)
    end
  end
end
