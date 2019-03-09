class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.integer :charisma
      t.integer :constitution
      t.integer :dexterity
      t.integer :intelligence
      t.string :name
      t.text :race_name_description
      t.text :short_description
      t.string :size
      t.string :source_book
      t.integer :speed
      t.integer :strength
      t.integer :wisdom

      t.timestamps null: false
    end

    change_column_default :races, :charisma, from: nil, to: 0
    change_column_default :races, :constitution, from: nil, to: 0
    change_column_default :races, :dexterity, from: nil, to: 0
    change_column_default :races, :intelligence, from: nil, to: 0
    change_column_default :races, :size, from: nil, to: 'medium'
    change_column_default :races, :speed, from: nil, to: 30
    change_column_default :races, :strength, from: nil, to: 0
    change_column_default :races, :wisdom, from: nil, to: 0
  end
end
