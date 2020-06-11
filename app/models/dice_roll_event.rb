class DiceRollEvent < ApplicationRecord
  belongs_to :profile
  has_many :die_rolls
end
