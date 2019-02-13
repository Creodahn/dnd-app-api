class CreateTreasureRule < ActiveRecord::Migration[5.1]
  def change
    create_table :treasure_rules do |t|
      t.integer :max
      t.integer :min

      t.timestamps null: false
    end

    # add relationship to new table to dice calculations
    add_reference :dice_calculations, :treasure_rule, index: true
    add_foreign_key :dice_calculations, :treasure_rules, columm: :treasure_rule_id

    add_reference :treasure_rules, :treasure_rule_set, index: true
    add_foreign_key :treasure_rules, :treasure_rule_sets, column: :treasure_rule_set_id
  end
end
