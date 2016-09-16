module Validator
  module Validations
    class Validator
      attr_reader :attribute

      def initialize(attribute: attribute)
        @attribute = attribute
      end

      def valid?(value)
        !value.nil?
      end

      def errors_message
        "#{@attribute} can't be blank"
      end
    end
  end
end
