class MagicItem < ApplicationRecord
  belongs_to :die, required: false
  belongs_to :parent, class_name: "MagicItem", required: false, foreign_key: 'parent_id'

  has_many :children, class_name: "MagicItem", foreign_key: 'parent_id'

  def die_type
    self.die&.name
  end
end
