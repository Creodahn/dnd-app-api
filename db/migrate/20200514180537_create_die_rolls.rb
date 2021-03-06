class CreateDieRolls < ActiveRecord::Migration[5.1]
  def change
    create_table :die_rolls do |t|
      t.integer :order
      t.integer :result

      t.timestamps
    end

    add_reference :die_rolls, :die, index: true
    add_foreign_key :die_rolls, :dice, column: :die_id
  end
end
