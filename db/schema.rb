# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_12_070721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.string "id_str"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "port"
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "material_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "stock"
    t.index ["material_id"], name: "index_inventories_on_material_id"
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "material_requests", force: :cascade do |t|
    t.date "requested_date"
    t.string "status"
    t.bigint "who_authorized_id", null: false
    t.bigint "who_requested_id", null: false
    t.bigint "material_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_material_requests_on_material_id"
    t.index ["who_authorized_id"], name: "index_material_requests_on_who_authorized_id"
    t.index ["who_requested_id"], name: "index_material_requests_on_who_requested_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "category"
    t.string "description"
    t.integer "catalog_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type_of_user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "inventories", "materials"
  add_foreign_key "inventories", "users"
  add_foreign_key "material_requests", "materials"
  add_foreign_key "material_requests", "users", column: "who_authorized_id"
  add_foreign_key "material_requests", "users", column: "who_requested_id"
end
