# This file was automatically generated for ClickSend by APIMATIC v2.0 ( https://apimatic.io ).

module ClickSend
  class BaseController
    attr_accessor :http_client, :http_call_back

    @@http_client = FaradayClient.new

    @@global_headers = {
      'user-agent' => 'ClickSendSDK'
    }

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client ||= @@http_client
      @http_call_back = http_call_back
    end

    def validate_parameters(args)
      args.each do |_name, value|
        if value.nil?
          raise ArgumentError.new 'Required parameter #{name} cannot be nil.'
        end
      end
    end

    def execute_request(request, binary: false)
      @http_call_back.on_before_request(request) if @http_call_back

      APIHelper.clean_hash(request.headers)
      request.headers = @@global_headers.clone.merge(request.headers)

      response = binary ? @http_client.execute_as_binary(request) : @http_client.execute_as_string(request)
      context = HttpContext.new(request, response)

      @http_call_back.on_after_response(context) if @http_call_back

      return context
    end

    def validate_response(context)
      if context.response.status_code == 400
        raise APIException.new 'BAD_REQUEST', context
      elsif context.response.status_code == 401
        raise APIException.new 'UNAUTHORIZED', context
      elsif context.response.status_code == 403
        raise APIException.new 'FORBIDDEN', context
      elsif context.response.status_code == 404
        raise APIException.new 'NOT_FOUND', context
      elsif context.response.status_code == 405
        raise APIException.new 'METHOD_NOT_FOUND', context
      elsif context.response.status_code == 429
        raise APIException.new 'TOO_MANY_REQUESTS', context
      elsif context.response.status_code == 500
        raise APIException.new 'INTERNAL_SERVER_ERROR', context
      elsif !context.response.status_code.between?(200, 208) #[200,208] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', context
      end
    end
  end
end
