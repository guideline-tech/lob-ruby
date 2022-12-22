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

# Unit tests for OpenapiClient::IntlAutocompletionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IntlAutocompletionsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::IntlAutocompletionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IntlAutocompletionsApi' do
    it 'should create an instance of IntlAutocompletionsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::IntlAutocompletionsApi)
    end
  end

  # unit tests for intl_autocompletion
  # autocomplete
  # Given an address prefix consisting of a partial primary line and country, as well as optional input of city, state, and zip code, this functionality returns up to 10 full International address suggestions. Not all of them will turn out to be valid addresses; they&#39;ll need to be [verified](#operation/intl_verification).
  # @param intl_autocompletions_writable 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_lang_output * &#x60;native&#x60; - Translate response to the native language of the country in the request * &#x60;match&#x60; - match the response to the language in the request  Default response is in English. 
  # @return [IntlAutocompletions]
  describe 'intl_autocompletion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
