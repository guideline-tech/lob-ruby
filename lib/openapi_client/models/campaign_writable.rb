=begin
#Lob

#The Lob API is organized around REST. Our API is designed to have predictable, resource-oriented URLs and uses HTTP response codes to indicate any API errors. <p> Looking for our [previous documentation](https://lob.github.io/legacy-docs/)? 

The version of the OpenAPI document: 1.3.0
Contact: lob-openapi@lob.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module OpenapiClient
  class CampaignWritable
    # Unique identifier prefixed with `bg_`.
    attr_accessor :billing_group_id

    # Name of the campaign.
    attr_accessor :name

    # An internal description that identifies this resource. Must be no longer than 255 characters. 
    attr_accessor :description

    attr_accessor :schedule_type

    # If `schedule_type` is `target_delivery_date`, provide a targeted delivery date for mail pieces in this campaign.
    attr_accessor :target_delivery_date

    # If `schedule_type` is `scheduled_send_date`, provide a date to send this campaign.
    attr_accessor :send_date

    # A window, in minutes, within which the campaign can be canceled.
    attr_accessor :cancel_window_campaign_minutes

    # Use metadata to store custom information for tagging and labeling back to your internal systems. Must be an object with up to 20 key-value pairs. Keys must be at most 40 characters and values must be at most 500 characters. Neither can contain the characters `\"` and `\\`. i.e. '{\"customer_id\" : \"NEWYORK2015\"}' Nested objects are not supported.  See [Metadata](#section/Metadata) for more information.
    attr_accessor :metadata

    attr_accessor :use_type

    # Whether or not a mail piece should be automatically canceled and not sent if the address is updated via NCOA.
    attr_accessor :auto_cancel_if_ncoa

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_group_id' => :'billing_group_id',
        :'name' => :'name',
        :'description' => :'description',
        :'schedule_type' => :'schedule_type',
        :'target_delivery_date' => :'target_delivery_date',
        :'send_date' => :'send_date',
        :'cancel_window_campaign_minutes' => :'cancel_window_campaign_minutes',
        :'metadata' => :'metadata',
        :'use_type' => :'use_type',
        :'auto_cancel_if_ncoa' => :'auto_cancel_if_ncoa'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'billing_group_id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'schedule_type' => :'CmpScheduleType',
        :'target_delivery_date' => :'Time',
        :'send_date' => :'Time',
        :'cancel_window_campaign_minutes' => :'Integer',
        :'metadata' => :'Hash<String, String>',
        :'use_type' => :'CmpUseType',
        :'auto_cancel_if_ncoa' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'billing_group_id',
        :'description',
        :'target_delivery_date',
        :'send_date',
        :'cancel_window_campaign_minutes',
        :'use_type',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CampaignWritable` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CampaignWritable`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'billing_group_id')
        self.billing_group_id = attributes[:'billing_group_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'schedule_type')
        self.schedule_type = attributes[:'schedule_type']
      end

      if attributes.key?(:'target_delivery_date')
        self.target_delivery_date = attributes[:'target_delivery_date']
      end

      if attributes.key?(:'send_date')
        self.send_date = attributes[:'send_date']
      end

      if attributes.key?(:'cancel_window_campaign_minutes')
        self.cancel_window_campaign_minutes = attributes[:'cancel_window_campaign_minutes']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'use_type')
        self.use_type = attributes[:'use_type']
      end

      if attributes.key?(:'auto_cancel_if_ncoa')
        self.auto_cancel_if_ncoa = attributes[:'auto_cancel_if_ncoa']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^bg_[a-zA-Z0-9]+$/)
      if !@billing_group_id.nil? && @billing_group_id !~ pattern
        invalid_properties.push("invalid value for \"billing_group_id\", must conform to the pattern #{pattern}.")
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if !@description.nil? && @description.to_s.length > 255
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 255.')
      end

      if @schedule_type.nil?
        invalid_properties.push('invalid value for "schedule_type", schedule_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@billing_group_id.nil? && @billing_group_id !~ Regexp.new(/^bg_[a-zA-Z0-9]+$/)
      return false if @name.nil?
      return false if !@description.nil? && @description.to_s.length > 255
      return false if @schedule_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_group_id Value to be assigned
    def billing_group_id=(billing_group_id)
      pattern = Regexp.new(/^bg_[a-zA-Z0-9]+$/)
      if !billing_group_id.nil? && billing_group_id !~ pattern
        fail ArgumentError, "invalid value for \"billing_group_id\", must conform to the pattern #{pattern}."
      end

      @billing_group_id = billing_group_id
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 255
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 255.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)
      @metadata = metadata
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billing_group_id == o.billing_group_id &&
          name == o.name &&
          description == o.description &&
          schedule_type == o.schedule_type &&
          target_delivery_date == o.target_delivery_date &&
          send_date == o.send_date &&
          cancel_window_campaign_minutes == o.cancel_window_campaign_minutes &&
          metadata == o.metadata &&
          use_type == o.use_type &&
          auto_cancel_if_ncoa == o.auto_cancel_if_ncoa
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [billing_group_id, name, description, schedule_type, target_delivery_date, send_date, cancel_window_campaign_minutes, metadata, use_type, auto_cancel_if_ncoa].hash
    end


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil) # // guardrails-disable-line
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) }) # // guardrails-disable-line
          end
        elsif !attributes[self.class.attribute_map[key]].nil? && type.kind_of?(Array)
          for base_type in type do
            res = _deserialize(base_type, attributes[self.class.attribute_map[key]])
            if !res.nil?
              self.send("#{key}=", res) # // guardrails-disable-line
              break
            end
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]])) # // guardrails-disable-line
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr) # // guardrails-disable-line
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
