class CreateDiceRollEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :dice_roll_events do |t|
      t.string :route
      t.timestamps
    end
    
    add_reference :die_rolls, :dice_roll_event, index: true
    add_foreign_key :die_rolls, :dice_roll_events, column: :dice_roll_event_id

    add_reference :dice_roll_events, :profile, index: true
    add_foreign_key :dice_roll_events, :profiles, column: :profile_id
  end
end
