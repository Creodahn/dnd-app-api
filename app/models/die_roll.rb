class DieRoll < ApplicationRecord
  belongs_to :dice_roll_event
  belongs_to :die, class_name: 'Die'
end
