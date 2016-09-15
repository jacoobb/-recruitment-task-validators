require_relative 'validations/validator'
require_relative 'validations/presence_validator'
require_relative 'validations/numericality_validator'

module Validations
  def validates_list
    @@validates_list ||= {}
  end

  def validates_presence_of(*attributes)
    validates_list[PresenceValidator] = []
    attributes.each do |attribute|
      validates_list[PresenceValidator] << attribute
    end
  end

  def validates_numericality_of(*attributes)
    validates_list[NumericalityValidator] = []
    attributes.each do |attribute|
      validates_list[NumericalityValidator] << attribute
    end
  end
end

