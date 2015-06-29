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

ActiveRecord::Schema.define(version: 20150629070937) do

  create_table "contract_type_contract_types", force: :cascade do |t|
    t.string   "Type"
    t.string   "Supplier_id"
    t.string   "Device_id"
    t.string   "User_id"
    t.string   "Location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "device_devices", force: :cascade do |t|
    t.string   "Name"
    t.string   "Stock_number"
    t.string   "Location"
    t.string   "Provider_who_maintains"
    t.string   "User_id"
    t.string   "Supplier_id"
    t.string   "Contract_type_id"
    t.string   "Location_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "location_locations", force: :cascade do |t|
    t.string   "Laboratory_Department"
    t.string   "Manager"
    t.string   "Mail"
    t.string   "User_id"
    t.string   "Device_id"
    t.string   "Contract_type_id"
    t.string   "Supplier_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "supplier_suppliers", force: :cascade do |t|
    t.string   "Bussines_name"
    t.string   "Contact"
    t.string   "Phone"
    t.string   "Mail"
    t.string   "User_id"
    t.string   "Device_id"
    t.string   "Contract_type_id"
    t.string   "Location_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_users", force: :cascade do |t|
    t.string   "Name"
    t.string   "Mail"
    t.string   "Login"
    t.string   "Supplier_id"
    t.string   "Device_id"
    t.string   "Contract_type_id"
    t.string   "Location_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
