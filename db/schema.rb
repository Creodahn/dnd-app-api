# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190201195738) do

  create_table "art_objects", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coins", force: :cascade do |t|
    t.string "name"
    t.decimal "value"
    t.decimal "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dice", force: :cascade do |t|
    t.integer "ceil"
    t.integer "floor"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dice_calculations", force: :cascade do |t|
    t.integer "dice_count"
    t.string "item_type"
    t.integer "item_value"
    t.integer "multiplier"
  end

  create_table "gemstones", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "magic_items", force: :cascade do |t|
    t.text "additional_roll"
    t.integer "max"
    t.integer "min"
    t.string "name"
    t.string "table"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treasure_rule_sets", force: :cascade do |t|
    t.integer "max_cr"
    t.integer "min_cr"
    t.text "rules"
    t.string "treasure_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treasure_rules", force: :cascade do |t|
    t.integer "max"
    t.integer "min"
    t.integer "treasure_rule_sets_id"
    t.index ["treasure_rule_sets_id"], name: "index_treasure_rules_on_treasure_rule_sets_id"
  end

end
