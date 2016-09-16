module Validator
  module Validations
    class NumericalityValidator < Validator
      def valid?(value)
        value.is_a?(Numeric) || value.is_a?(Proc) || value.is_a?(Symbol)
      end

      def errors_message
        "#{@attribute} must be number"
      end
    end
  end
end
