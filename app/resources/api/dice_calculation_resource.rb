class Api::DiceCalculationResource < JSONAPI::Resource
  attributes :coin_type, :dice_count, :die_type, :item_table, :item_type, :item_value, :multiplier

  has_one :coin
  has_one :die
  has_one :treasure_rule

  filter :item_type
  filter :item_value
  filter :multiplier
end
