class Api::DieResource < JSONAPI::Resource
  attributes :ceil, :floor, :name, :show_to_user
end
