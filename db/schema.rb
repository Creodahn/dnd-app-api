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

ActiveRecord::Schema.define(version: 20200514181141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.boolean "show_to_user", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dice_calculations", force: :cascade do |t|
    t.integer "dice_count", default: 1
    t.string "item_table"
    t.string "item_type"
    t.integer "item_value"
    t.integer "multiplier", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "coin_id"
    t.bigint "die_id"
    t.bigint "treasure_rule_set_id"
    t.bigint "treasure_rule_id"
    t.index ["coin_id"], name: "index_dice_calculations_on_coin_id"
    t.index ["die_id"], name: "index_dice_calculations_on_die_id"
    t.index ["treasure_rule_id"], name: "index_dice_calculations_on_treasure_rule_id"
    t.index ["treasure_rule_set_id"], name: "index_dice_calculations_on_treasure_rule_set_id"
  end

  create_table "dice_roll_events", force: :cascade do |t|
    t.string "route"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.bigint "treasure_rule_set_id"
    t.index ["profile_id"], name: "index_dice_roll_events_on_profile_id"
    t.index ["treasure_rule_set_id"], name: "index_dice_roll_events_on_treasure_rule_set_id"
  end

  create_table "die_rolls", force: :cascade do |t|
    t.integer "order"
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "die_id"
    t.bigint "dice_roll_event_id"
    t.index ["dice_roll_event_id"], name: "index_die_rolls_on_dice_roll_event_id"
    t.index ["die_id"], name: "index_die_rolls_on_die_id"
  end

  create_table "gemstones", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "magic_items", force: :cascade do |t|
    t.integer "max"
    t.integer "min"
    t.string "name"
    t.string "table"
    t.bigint "die_id"
    t.bigint "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["die_id"], name: "index_magic_items_on_die_id"
    t.index ["parent_id"], name: "index_magic_items_on_parent_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "bio"
    t.string "name"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_profiles_on_email"
    t.index ["user_id"], name: "index_profiles_on_user_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "treasure_rule_set_id"
    t.index ["treasure_rule_set_id"], name: "index_treasure_rules_on_treasure_rule_set_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.date "authenticated_at"
    t.string "access_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dice_calculations", "coins"
  add_foreign_key "dice_calculations", "dice"
  add_foreign_key "dice_calculations", "treasure_rule_sets"
  add_foreign_key "dice_calculations", "treasure_rules"
  add_foreign_key "dice_roll_events", "profiles"
  add_foreign_key "dice_roll_events", "treasure_rule_sets"
  add_foreign_key "die_rolls", "dice"
  add_foreign_key "die_rolls", "dice_roll_events"
  add_foreign_key "magic_items", "dice"
  add_foreign_key "magic_items", "magic_items", column: "parent_id"
  add_foreign_key "treasure_rules", "treasure_rule_sets"
end
