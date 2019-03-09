class Api::RaceNameResource < JSONAPI::Resource
  attributes :group, :name

  has_one :race
end
