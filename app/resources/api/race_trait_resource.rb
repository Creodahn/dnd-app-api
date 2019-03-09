class Api::RaceTraitResource < JSONAPI::Resource
  attributes :trait_description, :trait_header

  has_one :race
end
