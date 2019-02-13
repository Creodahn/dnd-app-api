class CreateMagicItems < ActiveRecord::Migration[5.1]
  def change
    create_table :magic_items do |t|
      t.integer :max
      t.integer :min
      t.string :name
      t.string :table, null: true

      t.references :die, index: true, null: true, foreign_key: { to_table: :dice }
      t.references :parent, index: true, null: true, foreign_key: { to_table: :magic_items }

      t.timestamps null: false
    end
  end
end
