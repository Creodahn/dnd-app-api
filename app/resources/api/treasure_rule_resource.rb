class Api::TreasureRuleResource < JSONAPI::Resource
  attributes :max, :min

  has_one :treasure_rule_set

  has_many :dice_calculations

  filter :max
  filter :min
  filter :treasure_rule_set_id
end
