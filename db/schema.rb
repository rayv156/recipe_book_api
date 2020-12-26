# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_17_214827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grocery_lists", force: :cascade do |t|
    t.string "aisle", default: [], array: true
    t.string "items", default: [], array: true
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_grocery_lists_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "ingredients", default: [], array: true
    t.string "instructions", default: [], array: true
    t.string "prep_time"
    t.string "cook_time"
    t.string "summary"
    t.string "name"
    t.string "img"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
