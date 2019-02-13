class CreateGemstones < ActiveRecord::Migration[5.1]
  def change
    create_table :gemstones do |t|
      t.text :description
      t.string :name
      t.integer :value

      t.timestamps null: false
    end
  end
end
