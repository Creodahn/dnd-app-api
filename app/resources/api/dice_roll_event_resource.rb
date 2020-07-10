class Api::DiceRollEventResource < JSONAPI::Resource
  attributes :created_at, :route, :updated_at
  
  has_many :die_rolls
  has_one :profile
  has_one :treasure_rule_set

  filter :profile
end