class TreasureRule < ApplicationRecord
  belongs_to :treasure_rule_set, class_name: 'TreasureRuleSet'

  has_many :dice_calculations
end
