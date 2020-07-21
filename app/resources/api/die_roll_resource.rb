class Api::DieRollResource < JSONAPI::Resource
  attributes :created_at, :order, :result, :updated_at

  has_one :dice_roll_event
  has_one :die
end