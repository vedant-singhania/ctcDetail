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

ActiveRecord::Schema.define(version: 20140311081445) do

  create_table "appointments", force: true do |t|
    t.integer  "customer_id"
    t.integer  "package_id"
    t.integer  "crew_id"
    t.date     "appointment_date"
    t.date     "appointments_today"
    t.time     "appointment_time"
    t.integer  "number_of_cars"
    t.string   "location_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["customer_id", "package_id", "crew_id"], name: "index_appointments_on_customer_id_and_package_id_and_crew_id", using: :btree

  create_table "crews", force: true do |t|
    t.string   "car_number"
    t.string   "driver_name"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "gender_of_customer"
    t.string   "car"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
