class Api::CoinResource < JSONAPI::Resource
  attributes :name, :value, :weight
end
