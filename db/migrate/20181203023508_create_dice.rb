class CreateDice < ActiveRecord::Migration[5.1]
  def change
    create_table :dice do |t|
      t.integer :ceil
      t.integer :floor
      t.string :name

      t.timestamps
    end
  end
end
