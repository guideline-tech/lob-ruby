=begin
#Lob

#The Lob API is organized around REST. Our API is designed to have predictable, resource-oriented URLs and uses HTTP response codes to indicate any API errors. <p> Looking for our [previous documentation](https://lob.github.io/legacy-docs/)? 

The version of the OpenAPI document: 1.3.0
Contact: lob-openapi@lob.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::ChecksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ChecksApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::ChecksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChecksApi' do
    it 'should create an instance of ChecksApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::ChecksApi)
    end
  end

  # unit tests for check_cancel
  # cancel
  # Completely removes a check from production. This can only be done if the check has a &#x60;send_date&#x60; and the &#x60;send_date&#x60; has not yet passed. If the check is successfully canceled, you will not be charged for it. Read more on [cancellation windows](#section/Cancellation-Windows) and [scheduling](#section/Scheduled-Mailings). Scheduling and cancellation is a premium feature. Upgrade to the appropriate [Print &amp; Mail Edition](https://dashboard.lob.com/#/settings/editions) to gain access.
  # @param chk_id id of the check
  # @param [Hash] opts the optional parameters
  # @return [CheckDeletion]
  describe 'check_cancel test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_create
  # create
  # Creates a new check with the provided properties.
  # @param check_editable 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key A string of no longer than 256 characters that uniquely identifies this resource. For more help integrating idempotency keys, refer to our [implementation guide](https://www.lob.com/guides#idempotent_request). 
  # @return [Check]
  describe 'check_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_retrieve
  # get
  # Retrieves the details of an existing check. You need only supply the unique check identifier that was returned upon check creation.
  # @param chk_id id of the check
  # @param [Hash] opts the optional parameters
  # @return [Check]
  describe 'check_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for checks_list
  # list
  # Returns a list of your checks. The checks are returned sorted by creation date, with the most recently created checks appearing first.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit How many results to return.
  # @option opts [String] :before A reference to a list entry used for paginating to the previous set of entries. This field is pre-populated in the &#x60;previous_url&#x60; field in the return response. 
  # @option opts [String] :after A reference to a list entry used for paginating to the next set of entries. This field is pre-populated in the &#x60;next_url&#x60; field in the return response. 
  # @option opts [Array<String>] :include Request that the response include the total count by specifying &#x60;include[]&#x3D;total_count&#x60;. 
  # @option opts [Hash<String, Time>] :date_created Filter by date created.
  # @option opts [Hash<String, String>] :metadata Filter by metadata key-value pair&#x60;.
  # @option opts [Boolean] :scheduled * &#x60;true&#x60; - only return orders (past or future) where &#x60;send_date&#x60; is greater than &#x60;date_created&#x60; * &#x60;false&#x60; - only return orders where &#x60;send_date&#x60; is equal to &#x60;date_created&#x60; 
  # @option opts [Hash<String, String>] :send_date Filter by date sent.
  # @option opts [MailType] :mail_type A string designating the mail postage type: * &#x60;usps_first_class&#x60; - (default) * &#x60;usps_standard&#x60; - a [cheaper option](https://lob.com/pricing/print-mail#compare) which is less predictable and takes longer to deliver. &#x60;usps_standard&#x60; cannot be used with &#x60;4x6&#x60; postcards or for any postcards sent outside of the United States. 
  # @option opts [SortBy3] :sort_by Sorts items by ascending or descending dates. Use either &#x60;date_created&#x60; or &#x60;send_date&#x60;, not both. 
  # @return [CheckList]
  describe 'checks_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
