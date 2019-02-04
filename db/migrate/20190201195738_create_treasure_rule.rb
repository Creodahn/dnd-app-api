class CreateTreasureRule < ActiveRecord::Migration[5.1]
  def change
    create_table :treasure_rules do |t|
      t.integer :max
      t.integer :min
      t.belongs_to :treasure_rule_sets, index: true
    end

    add_foreign_key :dice_calculations, :treasure_rules, index: true
  end
end
