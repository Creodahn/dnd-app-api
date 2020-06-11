class DieRoll < ApplicationRecord
  belongs_to :die, class_name: 'Die'
end
