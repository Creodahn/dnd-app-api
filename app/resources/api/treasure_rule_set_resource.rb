class Api::TreasureRuleSetResource < JSONAPI::Resource
  attributes :max_cr, :min_cr, :rules, :treasure_type

  has_many :dice_calculations
  has_many :treasure_rules

  filter :max_cr
  filter :min_cr
  filter :treasure_type

  def apply_includes(records, directives)
    super.includes(:dice_calculations)
    super.includes(:treasure_rules)
  end
end
