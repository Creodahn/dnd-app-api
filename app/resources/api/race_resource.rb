class Api::RaceResource < JSONAPI::Resource
  attributes :charisma, :constitution, :dexterity, :intelligence, :name, :names, :race_name_description, :short_description, :size, :source_book, :speed, :strength, :traits, :wisdom

  has_many :race_names
  has_many :race_traits
end
