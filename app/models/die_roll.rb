class DieRoll < ApplicationRecord
  belongs_to :die, class_name: 'Die'
  belongs_to :profile
end
