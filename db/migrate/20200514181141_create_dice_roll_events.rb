class CreateDiceRollEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :dice_roll_events do |t|

      t.timestamps
    end
    
    add_reference :die_rolls, :dice_roll_event, index: true
    add_foreign_key :die_rolls, :dice_roll_events, column: :dice_roll_event_id
  end
end
