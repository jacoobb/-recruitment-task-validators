module Validator
  module Validations
    class Validator
      attr_reader :attribute

      def initialize(attribute: nil)
        @attribute = attribute
      end
    end
  end
end
