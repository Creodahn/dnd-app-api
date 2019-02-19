class DiceCalculation < ApplicationRecord
  belongs_to :die, class_name: 'Die'
  belongs_to :treasure_rule, class_name: 'TreasureRule'

  def die_type
    self.die.name
  end
end
