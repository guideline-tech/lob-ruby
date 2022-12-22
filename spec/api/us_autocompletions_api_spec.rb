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

# Unit tests for OpenapiClient::UsAutocompletionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UsAutocompletionsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::UsAutocompletionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsAutocompletionsApi' do
    it 'should create an instance of UsAutocompletionsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::UsAutocompletionsApi)
    end
  end

  # unit tests for us_autocompletion
  # autocomplete
  # Given an address prefix consisting of a partial primary line, as well as optional input of city, state, and zip code, this functionality returns up to 10 full US address suggestions. Not all of them will turn out to be valid addresses; they&#39;ll need to be [verified](#operation/verification_us).
  # @param us_autocompletions_writable 
  # @param [Hash] opts the optional parameters
  # @return [UsAutocompletions]
  describe 'us_autocompletion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
