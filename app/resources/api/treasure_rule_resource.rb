class Api::TreasureRuleResource < JSONAPI::Resource
  attributes :max_cr, :min_cr, :rules, :treasure_type

  filter :treasure_type
end
