class MagicItem < ApplicationRecord
  has_one :parent, class_name: "MagicItem"

  has_many :children, class_name: "MagicItem"
end
