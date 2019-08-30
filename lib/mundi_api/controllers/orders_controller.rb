# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # OrdersController
  class OrdersController < BaseController
    @instance = OrdersController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Gets an order
    # @param [String] order_id Required parameter: Order id
    # @return GetOrderResponse response from the API call
    def get_order(order_id)
      # Prepare query url.
      _path_url = '/orders/{order_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'order_id' => order_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderResponse.from_hash(decoded)
    end

    # Creates a new Order
    # @param [CreateOrderRequest] body Required parameter: Request for creating
    # an order
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetOrderResponse response from the API call
    def create_order(body,
                     idempotency_key = nil)
      # Prepare query url.
      _path_url = '/orders'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderResponse.from_hash(decoded)
    end

    # Gets all orders
    # @param [Integer] page Optional parameter: Page number
    # @param [Integer] size Optional parameter: Page size
    # @param [String] code Optional parameter: Filter for order's code
    # @param [String] status Optional parameter: Filter for order's status
    # @param [DateTime] created_since Optional parameter: Filter for order's
    # creation date start range
    # @param [DateTime] created_until Optional parameter: Filter for order's
    # creation date end range
    # @param [String] customer_id Optional parameter: Filter for order's
    # customer id
    # @return ListOrderResponse response from the API call
    def get_orders(page = nil,
                   size = nil,
                   code = nil,
                   status = nil,
                   created_since = nil,
                   created_until = nil,
                   customer_id = nil)
      # Prepare query url.
      _path_url = '/orders'
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page,
          'size' => size,
          'code' => code,
          'status' => status,
          'created_since' => created_since,
          'created_until' => created_until,
          'customer_id' => customer_id
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ListOrderResponse.from_hash(decoded)
    end

    # Updates the metadata from an order
    # @param [String] order_id Required parameter: The order id
    # @param [UpdateMetadataRequest] request Required parameter: Request for
    # updating the order metadata
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetOrderResponse response from the API call
    def update_order_metadata(order_id,
                              request,
                              idempotency_key = nil)
      # Prepare query url.
      _path_url = '/Orders/{order_id}/metadata'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'order_id' => order_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetOrderResponse response from the API call
    def delete_all_order_items(order_id,
                               idempotency_key = nil)
      # Prepare query url.
      _path_url = '/orders/{orderId}/items'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'orderId' => order_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] item_id Required parameter: Item Id
    # @param [UpdateOrderItemRequest] request Required parameter: Item Model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetOrderItemResponse response from the API call
    def update_order_item(order_id,
                          item_id,
                          request,
                          idempotency_key = nil)
      # Prepare query url.
      _path_url = '/orders/{orderId}/items/{itemId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'orderId' => order_id,
        'itemId' => item_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderItemResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] item_id Required parameter: Item Id
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetOrderItemResponse response from the API call
    def delete_order_item(order_id,
                          item_id,
                          idempotency_key = nil)
      # Prepare query url.
      _path_url = '/orders/{orderId}/items/{itemId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'orderId' => order_id,
        'itemId' => item_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderItemResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [CreateOrderItemRequest] request Required parameter: Order Item
    # Model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetOrderItemResponse response from the API call
    def create_order_item(order_id,
                          request,
                          idempotency_key = nil)
      # Prepare query url.
      _path_url = '/orders/{orderId}/items'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'orderId' => order_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderItemResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] order_id Required parameter: Order Id
    # @param [String] item_id Required parameter: Item Id
    # @return GetOrderItemResponse response from the API call
    def get_order_item(order_id,
                       item_id)
      # Prepare query url.
      _path_url = '/orders/{orderId}/items/{itemId}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'orderId' => order_id,
        'itemId' => item_id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderItemResponse.from_hash(decoded)
    end

    # TODO: type endpoint description here
    # @param [String] id Required parameter: Order Id
    # @param [UpdateOrderStatusRequest] request Required parameter: Update Order
    # Model
    # @param [String] idempotency_key Optional parameter: Example:
    # @return GetOrderResponse response from the API call
    def update_order_status(id,
                            request,
                            idempotency_key = nil)
      # Prepare query url.
      _path_url = '/orders/{id}/closed'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'id' => id
      )
      _query_builder = Configuration.base_uri.dup
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'idempotency-key' => idempotency_key
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.patch(
        _query_url,
        headers: _headers,
        parameters: request.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      GetOrderResponse.from_hash(decoded)
    end
  end
end
