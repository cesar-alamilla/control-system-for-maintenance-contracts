# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150701132025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalog_contract_types", force: :cascade do |t|
    t.string   "Type"
    t.string   "Supplier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalog_devices", force: :cascade do |t|
    t.string   "Name"
    t.integer  "Stock_number"
    t.string   "Location"
    t.string   "Provider_who_maintains"
    t.string   "User_id"
    t.string   "Supplier_id"
    t.string   "Location_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "catalog_locations", force: :cascade do |t|
    t.string   "Laboratory_department"
    t.string   "Manager"
    t.string   "Mail"
    t.string   "Device"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "catalog_suppliers", force: :cascade do |t|
    t.string   "Bussines_name"
    t.string   "Contact"
    t.string   "Phone"
    t.string   "Mail"
    t.string   "Contract_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
