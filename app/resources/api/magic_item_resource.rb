class Api::MagicItemResource < JSONAPI::Resource
  attributes :max, :min, :name, :table
end
