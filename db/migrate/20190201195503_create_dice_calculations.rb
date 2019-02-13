class CreateDiceCalculations < ActiveRecord::Migration[5.1]
  def change
    create_table :dice_calculations do |t|
      t.integer :dice_count
      t.string :item_table
      t.string :item_type
      t.integer :item_value
      t.integer :multiplier

      t.timestamps null: false
    end

    add_reference :dice_calculations, :die, index: true
    add_foreign_key :dice_calculations, :die, column: :die_id

    add_reference :dice_calculations, :treasure_rule, index: true
    add_foreign_key :dice_calculations, :treasure_rules, columm: :treasure_rule_id

    change_column_default :dice_calculations, :dice_count, from: nil, to: 1
    change_column_default :dice_calculations, :multiplier, from: nil, to: 1
  end
end
