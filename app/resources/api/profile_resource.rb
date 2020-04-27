class Api::ProfileResource < JSONAPI::Resource
  attributes :bio, :name, :email

  has_one :user

  filter :email
  filter :name
end
