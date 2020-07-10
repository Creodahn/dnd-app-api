class DiceRollEvent < ApplicationRecord
  belongs_to :profile
  belongs_to :treasure_rule_set, optional: true

  has_many :die_rolls
end
