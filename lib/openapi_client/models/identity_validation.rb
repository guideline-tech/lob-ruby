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
  class IdentityValidation
    # Unique identifier prefixed with `id_validation_`.
    attr_accessor :id

    # The intended recipient, typically a person's or firm's name.
    attr_accessor :recipient

    # The primary delivery line (usually the street address) of the address. Combination of the following applicable `components`: * `primary_number` * `street_predirection` * `street_name` * `street_suffix` * `street_postdirection` * `secondary_designator` * `secondary_number` * `pmb_designator` * `pmb_number` 
    attr_accessor :primary_line

    # The secondary delivery line of the address. This field is typically empty but may contain information if `primary_line` is too long. 
    attr_accessor :secondary_line

    # Only present for addresses in Puerto Rico. An urbanization refers to an area, sector, or development within a city. See [USPS documentation](https://pe.usps.com/text/pub28/28api_008.htm#:~:text=I51.,-4%20Urbanizations&text=In%20Puerto%20Rico%2C%20identical%20street,placed%20before%20the%20urbanization%20name.) for clarification. 
    attr_accessor :urbanization

    # Combination of the following applicable `components`: * City (`city`) * State (`state`) * ZIP code (`zip_code`) * ZIP+4 (`zip_code_plus_4`) 
    attr_accessor :last_line

    # A numerical score between 0 and 100 that represents the likelihood the provided name is associated with a physical address. 
    attr_accessor :score

    # Indicates the likelihood the recipient name and address match based on our custom internal calculation. Possible values are: - `high` — Has a Lob confidence score greater than 70. - `medium` — Has a Lob confidence score between 40 and 70. - `low` — Has a Lob confidence score less than 40. - `\"\"` — No tracking data exists for this address. 
    attr_accessor :confidence

    # Value is resource type.
    attr_accessor :object

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'recipient' => :'recipient',
        :'primary_line' => :'primary_line',
        :'secondary_line' => :'secondary_line',
        :'urbanization' => :'urbanization',
        :'last_line' => :'last_line',
        :'score' => :'score',
        :'confidence' => :'confidence',
        :'object' => :'object'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'recipient' => :'String',
        :'primary_line' => :'String',
        :'secondary_line' => :'String',
        :'urbanization' => :'String',
        :'last_line' => :'String',
        :'score' => :'Float',
        :'confidence' => :'String',
        :'object' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'recipient',
        :'score',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::IdentityValidation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::IdentityValidation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'primary_line')
        self.primary_line = attributes[:'primary_line']
      end

      if attributes.key?(:'secondary_line')
        self.secondary_line = attributes[:'secondary_line']
      end

      if attributes.key?(:'urbanization')
        self.urbanization = attributes[:'urbanization']
      end

      if attributes.key?(:'last_line')
        self.last_line = attributes[:'last_line']
      end

      if attributes.key?(:'score')
        self.score = attributes[:'score']
      end

      if attributes.key?(:'confidence')
        self.confidence = attributes[:'confidence']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = 'id_validation'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^id_validation_[a-zA-Z0-9_]+$/)
      if !@id.nil? && @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if !@recipient.nil? && @recipient.to_s.length > 500
        invalid_properties.push('invalid value for "recipient", the character length must be smaller than or equal to 500.')
      end

      if !@primary_line.nil? && @primary_line.to_s.length > 500
        invalid_properties.push('invalid value for "primary_line", the character length must be smaller than or equal to 500.')
      end

      if !@secondary_line.nil? && @secondary_line.to_s.length > 500
        invalid_properties.push('invalid value for "secondary_line", the character length must be smaller than or equal to 500.')
      end

      if !@urbanization.nil? && @urbanization.to_s.length > 500
        invalid_properties.push('invalid value for "urbanization", the character length must be smaller than or equal to 500.')
      end

      if !@score.nil? && @score > 100
        invalid_properties.push('invalid value for "score", must be smaller than or equal to 100.')
      end

      if !@score.nil? && @score < 0
        invalid_properties.push('invalid value for "score", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id !~ Regexp.new(/^id_validation_[a-zA-Z0-9_]+$/)
      return false if !@recipient.nil? && @recipient.to_s.length > 500
      return false if !@primary_line.nil? && @primary_line.to_s.length > 500
      return false if !@secondary_line.nil? && @secondary_line.to_s.length > 500
      return false if !@urbanization.nil? && @urbanization.to_s.length > 500
      return false if !@score.nil? && @score > 100
      return false if !@score.nil? && @score < 0
      confidence_validator = EnumAttributeValidator.new('String', ["high", "medium", "low", ""])
      return false unless confidence_validator.valid?(@confidence)
      object_validator = EnumAttributeValidator.new('String', ["id_validation"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      pattern = Regexp.new(/^id_validation_[a-zA-Z0-9_]+$/)
      if !id.nil? && id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] recipient Value to be assigned
    def recipient=(recipient)
      if !recipient.nil? && recipient.to_s.length > 500
        fail ArgumentError, 'invalid value for "recipient", the character length must be smaller than or equal to 500.'
      end

      @recipient = recipient
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_line Value to be assigned
    def primary_line=(primary_line)
      if !primary_line.nil? && primary_line.to_s.length > 500
        fail ArgumentError, 'invalid value for "primary_line", the character length must be smaller than or equal to 500.'
      end

      @primary_line = primary_line
    end

    # Custom attribute writer method with validation
    # @param [Object] secondary_line Value to be assigned
    def secondary_line=(secondary_line)
      if !secondary_line.nil? && secondary_line.to_s.length > 500
        fail ArgumentError, 'invalid value for "secondary_line", the character length must be smaller than or equal to 500.'
      end

      @secondary_line = secondary_line
    end

    # Custom attribute writer method with validation
    # @param [Object] urbanization Value to be assigned
    def urbanization=(urbanization)
      if !urbanization.nil? && urbanization.to_s.length > 500
        fail ArgumentError, 'invalid value for "urbanization", the character length must be smaller than or equal to 500.'
      end

      @urbanization = urbanization
    end

    # Custom attribute writer method with validation
    # @param [Object] score Value to be assigned
    def score=(score)
      if !score.nil? && score > 100
        fail ArgumentError, 'invalid value for "score", must be smaller than or equal to 100.'
      end

      if !score.nil? && score < 0
        fail ArgumentError, 'invalid value for "score", must be greater than or equal to 0.'
      end

      @score = score
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] confidence Object to be assigned
    def confidence=(confidence)
      validator = EnumAttributeValidator.new('String', ["high", "medium", "low", ""])
      unless validator.valid?(confidence)
        fail ArgumentError, "invalid value for \"confidence\", must be one of #{validator.allowable_values}."
      end
      @confidence = confidence
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["id_validation"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          recipient == o.recipient &&
          primary_line == o.primary_line &&
          secondary_line == o.secondary_line &&
          urbanization == o.urbanization &&
          last_line == o.last_line &&
          score == o.score &&
          confidence == o.confidence &&
          object == o.object
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, recipient, primary_line, secondary_line, urbanization, last_line, score, confidence, object].hash
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
