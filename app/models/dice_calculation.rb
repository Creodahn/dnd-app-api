class DiceCalculation < ApplicationRecord
  belongs_to :coin, required: false
  belongs_to :die, class_name: 'Die'
  belongs_to :treasure_rule, class_name: 'TreasureRule', required: false
  belongs_to :treasure_rule_set, class_name: 'TreasureRuleSet', required: false
  

  def coin_type
    self.coin&.name
  end

  def die_type
    self.die.name
  end
end
