class Api::DiceRollEventResource < JSONAPI::Resource
  attributes :created_at, :updated_at
  
  has_many :die_rolls
  has_one :profile

  filter :profile
end