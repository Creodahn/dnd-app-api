class Api::MagicItemResource < JSONAPI::Resource
  attributes :max, :min, :name, :table

  has_one :die
  has_one :parent

  has_many :children
end
