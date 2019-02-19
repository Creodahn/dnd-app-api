class DiceCalculation < ApplicationRecord
  belongs_to :coin, required: false
  belongs_to :die, class_name: 'Die'
  belongs_to :treasure_rule, class_name: 'TreasureRule'
  

  def coin_type
    self.coin.name
  end

  def die_type
    self.die.name
  end
end
