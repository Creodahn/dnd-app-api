class Api::DiceCalculationResource < JSONAPI::Resource
  attributes :dice_count, :item_table, :item_type, :item_value, :multiplier

  has_one :die
  has_one :trasure_rule

  filter :item_type
  filter :item_value
  filter :multiplier
end