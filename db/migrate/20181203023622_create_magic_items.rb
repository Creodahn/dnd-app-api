class CreateMagicItems < ActiveRecord::Migration[5.1]
  def change
    create_table :magic_items do |t|
      t.text :additional_roll
      t.integer :max
      t.integer :min
      t.string :name
      t.string :table

      t.timestamps null: false
    end
  end
end
