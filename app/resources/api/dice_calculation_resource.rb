class Api::DiceCalculationResource < JSONAPI::Resource
  attributes :dice_count, :die_type, :item_table, :item_type, :item_value, :multiplier

  has_one :die
  has_one :treasure_rule

  filter :item_type
  filter :item_value
  filter :multiplier
end
