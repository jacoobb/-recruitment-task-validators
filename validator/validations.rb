require_relative 'validations/validator'
require_relative 'validations/presence_validator'
require_relative 'validations/numericality_validator'

module Validator
  module Validations
    def validates_list
      @@validates_list ||= {}
    end

    def validates_presence_of(*attributes)
      validates_list[PresenceValidator] ||= []
      validates_list[PresenceValidator].concat(attributes)
      validates_list[PresenceValidator].uniq
    end

    def validates_numericality_of(*attributes)
      validates_list[NumericalityValidator] ||= []
      validates_list[NumericalityValidator].concat(attributes)
      validates_list[NumericalityValidator].uniq
    end
  end
end
