class CreateRaceNames < ActiveRecord::Migration[5.1]
  def change
    create_table :race_names do |t|
      t.string :group
      t.string :name

      t.timestamps null: false
    end

    add_reference :race_names. :race, index: true
    add_foreign_key :race_names, :races, column: :race_id
  end
end
