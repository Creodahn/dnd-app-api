class Api::MagicItemResource < JSONAPI::Resource
  attributes :die_type, :max, :min, :name, :table

  has_one :die
  has_one :parent

  has_many :children
end
