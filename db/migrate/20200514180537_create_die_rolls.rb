class CreateDieRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :die_rolls do |t|
      t.integer :result

      t.timestamps
    end

    add_reference :die_rolls, :die, index: true
    add_foreign_key :die_rolls, :dice, column: :die_id

    add_reference :die_rolls, :profile, index: true
    add_foreign_key :die_rolls, :profiles, column: :profile_id
  end
end
