class CreateTreasureRule < ActiveRecord::Migration[5.1]
  def change
    create_table :treasure_rules do |t|
      t.integer :max
      t.integer :min

      t.timestamps null: false
    end

    add_reference :treasure_rules, :treasure_rule_set, index: true
    add_foreign_key :treasure_rules, :treasure_rule_sets, column: :treasure_rule_set_id
  end
end
