class CreateTreasureRuleSets < ActiveRecord::Migration[5.1]
  def change
    create_table :treasure_rule_sets do |t|
      t.integer :max_cr
      t.integer :min_cr
      t.text :rules
      t.string :treasure_type

      t.timestamps null: false
    end
  end
end
