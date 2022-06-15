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

ActiveRecord::Schema.define(version: 2022_06_14_044752) do

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

  create_table "records", force: :cascade do |t|
    t.string "pedido", null: false
    t.string "division", null: false
    t.string "subdireccion", null: false
    t.string "area", null: false
    t.string "cope", null: false
    t.string "distrito", null: false
    t.string "estado", null: false
    t.string "principal_fo", null: false
    t.integer "tendido_secundario", null: false
    t.integer "conectorizacion_terminales", null: false
    t.integer "detallado_distrito", null: false
    t.boolean "programa_thx", null: false
    t.boolean "programa_htm", null: false
    t.date "fecha_expedicion", null: false
    t.bigint "user_id", null: false
    t.date "fecha_compromiso", null: false
    t.integer "total", null: false
    t.decimal "porcentaje_material", null: false
    t.string "pep", null: false
    t.string "operaciones", null: false
    t.string "oei", null: false
    t.string "oe", null: false
    t.string "programa", null: false
    t.string "subprograma", null: false
    t.string "id_obra", null: false
    t.string "migrador"
    t.text "comentarios"
    t.string "ventas"
    t.string "mes_programa_helicom"
    t.string "protocolo"
    t.string "planos"
    t.string "permisos"
    t.string "key"
    t.integer "numero_terminales"
    t.integer "km_secundario"
    t.integer "puertos"
    t.integer "clientes"
    t.date "fecha_entrega_protocolo"
    t.date "fecha_navegacion"
    t.string "clave_cna"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_records_on_user_id"
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
  add_foreign_key "records", "users"
end
