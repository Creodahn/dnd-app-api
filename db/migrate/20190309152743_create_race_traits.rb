class CreateRaceTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :race_traits do |t|
      t.text :trait_description
      t.string :trait_header

      t.timestamps null: false
    end

    add_reference :race_traits. :race, index: true
    add_foreign_key :race_traits, :races, column: :race_id
  end
end
