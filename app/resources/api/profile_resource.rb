class Api::ProfileResource < JSONAPI::Resource
  attributes :bio, :name, :email

  has_many :dice_roll_events
  has_one :user

  filter :email, apply: ->(records, value, _options) {
    # for any given email, this should only ever return the currently logged in user
    # to prevent passing in random emails and confirming accounts exist
    u = _options[:context][:current_user]
    records.where('profiles.user_id = ?', u[:id])
  }
  filter :name
end
