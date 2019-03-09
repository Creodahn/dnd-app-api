class Race < ApplicationRecord
  has_many :race_names
  has_many :race_traits
end
