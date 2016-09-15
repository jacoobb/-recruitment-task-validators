module Validations
  class PresenceValidator < Validator

    def valid?(value)
      !value.nil?
    end

    def errors_message
      "#{@attribute.to_s} can't be blank"
    end
  end
end
