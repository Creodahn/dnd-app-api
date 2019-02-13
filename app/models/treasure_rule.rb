class TreasureRule < ApplicationRecord
  belongs_to :treasure_rules_set, class_name: 'TreasureRuleSets'

  has_many :dice_calculations
end
