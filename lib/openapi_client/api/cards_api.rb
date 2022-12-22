=begin
#Lob

#The Lob API is organized around REST. Our API is designed to have predictable, resource-oriented URLs and uses HTTP response codes to indicate any API errors. <p> Looking for our [previous documentation](https://lob.github.io/legacy-docs/)? 

The version of the OpenAPI document: 1.3.0
Contact: lob-openapi@lob.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module OpenapiClient
  class CardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # create
    # Creates a new card given information
    # @param card_editable [CardEditable] 
    # @param [Hash] opts the optional parameters
    # @return [Card]
    def create(card_editable, opts = {})
      data, _status_code, _headers = card_create_with_http_info(card_editable, opts)
      data
    end

    # create
    # Creates a new card given information
    # @param card_editable [CardEditable] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Card, Integer, Hash)>] Card data, response status code and response headers
    def card_create_with_http_info(card_editable, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.card_create ...'
      end
      # verify the required parameter 'card_editable' is set
      if @api_client.config.client_side_validation && card_editable.nil?
        fail ArgumentError, "Missing the required parameter 'card_editable' when calling CardsApi.card_create"
      end
      # resource path
      local_var_path = '/cards'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(card_editable)

      # return_type
      return_type = opts[:debug_return_type] || 'Card'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CardsApi.card_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#card_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete
    # Delete an existing card. You need only supply the unique identifier that was returned upon card creation.
    # @param card_id [String] id of the card
    # @param [Hash] opts the optional parameters
    # @return [CardDeletion]
    def delete(card_id, opts = {})
      data, _status_code, _headers = card_delete_with_http_info(card_id, opts)
      data
    end

    # delete
    # Delete an existing card. You need only supply the unique identifier that was returned upon card creation.
    # @param card_id [String] id of the card
    # @param [Hash] opts the optional parameters
    # @return [Array<(CardDeletion, Integer, Hash)>] CardDeletion data, response status code and response headers
    def card_delete_with_http_info(card_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.card_delete ...'
      end
      # verify the required parameter 'card_id' is set
      if @api_client.config.client_side_validation && card_id.nil?
        fail ArgumentError, "Missing the required parameter 'card_id' when calling CardsApi.card_delete"
      end
      pattern = Regexp.new(/^card_[a-zA-Z0-9]+$/)
      if @api_client.config.client_side_validation && card_id !~ pattern
        fail ArgumentError, "invalid value for 'card_id' when calling CardsApi.card_delete, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/cards/{card_id}'.sub('{' + 'card_id' + '}', CGI.escape(card_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CardDeletion'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CardsApi.card_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#card_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get
    # Retrieves the details of an existing card. You need only supply the unique customer identifier that was returned upon card creation.
    # @param card_id [String] id of the card
    # @param [Hash] opts the optional parameters
    # @return [Card]
    def get(card_id, opts = {})
      data, _status_code, _headers = card_retrieve_with_http_info(card_id, opts)
      data
    end

    # get
    # Retrieves the details of an existing card. You need only supply the unique customer identifier that was returned upon card creation.
    # @param card_id [String] id of the card
    # @param [Hash] opts the optional parameters
    # @return [Array<(Card, Integer, Hash)>] Card data, response status code and response headers
    def card_retrieve_with_http_info(card_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.card_retrieve ...'
      end
      # verify the required parameter 'card_id' is set
      if @api_client.config.client_side_validation && card_id.nil?
        fail ArgumentError, "Missing the required parameter 'card_id' when calling CardsApi.card_retrieve"
      end
      pattern = Regexp.new(/^card_[a-zA-Z0-9]+$/)
      if @api_client.config.client_side_validation && card_id !~ pattern
        fail ArgumentError, "invalid value for 'card_id' when calling CardsApi.card_retrieve, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/cards/{card_id}'.sub('{' + 'card_id' + '}', CGI.escape(card_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Card'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CardsApi.card_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#card_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update
    # Update the details of an existing card. You need only supply the unique identifier that was returned upon card creation.
    # @param card_id [String] id of the card
    # @param card_updatable [CardUpdatable] 
    # @param [Hash] opts the optional parameters
    # @return [Card]
    def update(card_id, card_updatable, opts = {})
      data, _status_code, _headers = card_update_with_http_info(card_id, card_updatable, opts)
      data
    end

    # update
    # Update the details of an existing card. You need only supply the unique identifier that was returned upon card creation.
    # @param card_id [String] id of the card
    # @param card_updatable [CardUpdatable] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Card, Integer, Hash)>] Card data, response status code and response headers
    def card_update_with_http_info(card_id, card_updatable, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.card_update ...'
      end
      # verify the required parameter 'card_id' is set
      if @api_client.config.client_side_validation && card_id.nil?
        fail ArgumentError, "Missing the required parameter 'card_id' when calling CardsApi.card_update"
      end
      pattern = Regexp.new(/^card_[a-zA-Z0-9]+$/)
      if @api_client.config.client_side_validation && card_id !~ pattern
        fail ArgumentError, "invalid value for 'card_id' when calling CardsApi.card_update, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'card_updatable' is set
      if @api_client.config.client_side_validation && card_updatable.nil?
        fail ArgumentError, "Missing the required parameter 'card_updatable' when calling CardsApi.card_update"
      end
      # resource path
      local_var_path = '/cards/{card_id}'.sub('{' + 'card_id' + '}', CGI.escape(card_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(card_updatable)

      # return_type
      return_type = opts[:debug_return_type] || 'Card'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CardsApi.card_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#card_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # list
    # Returns a list of your cards. The cards are returned sorted by creation date, with the most recently created addresses appearing first.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many results to return. (default to 10)
    # @option opts [String] :before A reference to a list entry used for paginating to the previous set of entries. This field is pre-populated in the &#x60;previous_url&#x60; field in the return response. 
    # @option opts [String] :after A reference to a list entry used for paginating to the next set of entries. This field is pre-populated in the &#x60;next_url&#x60; field in the return response. 
    # @option opts [Array<String>] :include Request that the response include the total count by specifying &#x60;include[]&#x3D;total_count&#x60;. 
    # @return [CardList]
    def list(opts = {})
      data, _status_code, _headers = cards_list_with_http_info(opts)
      data
    end

    # list
    # Returns a list of your cards. The cards are returned sorted by creation date, with the most recently created addresses appearing first.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit How many results to return. (default to 10)
    # @option opts [String] :before A reference to a list entry used for paginating to the previous set of entries. This field is pre-populated in the &#x60;previous_url&#x60; field in the return response. 
    # @option opts [String] :after A reference to a list entry used for paginating to the next set of entries. This field is pre-populated in the &#x60;next_url&#x60; field in the return response. 
    # @option opts [Array<String>] :include Request that the response include the total count by specifying &#x60;include[]&#x3D;total_count&#x60;. 
    # @return [Array<(CardList, Integer, Hash)>] CardList data, response status code and response headers
    def cards_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.cards_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CardsApi.cards_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CardsApi.cards_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/cards'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'include'] = @api_client.build_collection_param(opts[:'include'], :multi) if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CardList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"CardsApi.cards_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#cards_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
