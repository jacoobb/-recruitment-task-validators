require_relative 'validations'

module Validator
  module Base
    def self.included(base)
      base.send :include, Validations
      base.send :extend, Validations
    end

    def valid?
      errors.clear
      run_validations
      errors.empty?
    end

    def errors
      @errors ||= []
    end

    private

    def run_validations
      validates_list.each do |klass, attributes|
        attributes.each do |attribute|
          validator = klass.new(attribute: attribute)
          next if run_validator(validator, send(attribute))
          add_to_message_errors(validator.errors_message)
        end
      end
    end

    def run_validator(validator, value)
      validator.valid?(value)
    end

    def add_to_message_errors(message)
      errors << message
    end
  end
end
