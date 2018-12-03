class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.decimal :value
      t.decimal :weight

      t.timestamps
    end
  end
end
