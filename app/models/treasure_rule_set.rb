class TreasureRuleSet < ApplicationRecord
  has_many :dice_calculations
  has_many :treasure_rules
end
