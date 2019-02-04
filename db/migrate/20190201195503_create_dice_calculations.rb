class CreateDiceCalculations < ActiveRecord::Migration[5.1]
  def change
    create_table :dice_calculations do |t|
      t.integer :dice_count
      t.string :item_type
      t.integer :item_value
      t.integer :multiplier
    end

    add_foreign_key :dice_calculations, :dice, index: true
  end
end
