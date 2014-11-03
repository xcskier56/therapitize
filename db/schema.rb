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

ActiveRecord::Schema.define(version: 20141102191204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "student_prefs", force: true do |t|
    t.integer "user_id"
    t.date    "start_date"
    t.date    "completion_date"
    t.integer "hrs_needed"
    t.integer "max_travel_distance"
    t.boolean "does_gender_matter"
    t.integer "creds_pursuing",            array: true
    t.boolean "want_addiction_cert_super"
    t.boolean "want_play_cert_super"
    t.integer "most_important_factors",    array: true
  end

  create_table "supervisor_prefs", force: true do |t|
    t.integer "license_num"
    t.integer "years_of_supervision"
    t.integer "how_manu_students_want"
    t.integer "most_important_factors", array: true
    t.integer "clinical_settings",      array: true
    t.integer "how_advertise",          array: true
  end

  create_table "users", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone",                  limit: 12
    t.text     "change_theory"
    t.string   "address"
    t.integer  "zip"
    t.string   "gender"
    t.boolean  "admin"
    t.boolean  "addiction_certified"
    t.boolean  "play_certified"
    t.text     "who_for_coffee"
    t.text     "education"
    t.boolean  "remote_supervision"
    t.boolean  "group_supervision"
    t.integer  "dollars_per_hr"
    t.string   "how_hear_about_us"
    t.integer  "prefs_id"
    t.string   "type"
    t.string   "street_address"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
