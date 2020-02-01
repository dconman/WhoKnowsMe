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

ActiveRecord::Schema.define(version: 2020_01_31_003352) do

  create_table "data_values", force: :cascade do |t|
    t.string "name", limit: 30
    t.integer "type"
    t.integer "user_id"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "name"], name: "index_data_values_on_user_id_and_name", unique: true
    t.index ["user_id"], name: "index_data_values_on_user_id"
  end

  create_table "data_values_merchants", id: false, force: :cascade do |t|
    t.integer "data_value_id", null: false
    t.integer "merchant_id", null: false
    t.index ["data_value_id"], name: "index_data_values_merchants_on_data_value_id"
    t.index ["merchant_id"], name: "index_data_values_merchants_on_merchant_id"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name", limit: 30
    t.integer "user_id"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "name"], name: "index_merchants_on_user_id_and_name", unique: true
    t.index ["user_id"], name: "index_merchants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", limit: 30
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "data_values", "users"
  add_foreign_key "merchants", "users"
end
