class CreateDice < ActiveRecord::Migration[5.1]
  def change
    create_table :dice do |t|
      t.integer :ceil
      t.integer :floor
      t.string :name
      t.boolean :show_to_user

      t.timestamps null: false
    end

    change_column_default :dice, :show_to_user, from: nil, to: true
  end
end
