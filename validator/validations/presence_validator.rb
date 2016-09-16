module Validator
  module Validations
    class PresenceValidator < Validator
      def valid?(value)
        !empty?(value)
      end

      def errors_message
        "#{@attribute} can't be blank"
      end

      def empty?(value)
        value.nil? || value.size == 0
      end
    end
  end
end
