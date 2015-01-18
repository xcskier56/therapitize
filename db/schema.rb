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

ActiveRecord::Schema.define(version: 20150118181322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "preferences", force: true do |t|
    t.integer "user_id"
    t.string  "type"
    t.string  "favorite_theorist"
    t.boolean "lsw"
    t.boolean "msw"
    t.boolean "licsw"
    t.boolean "lmft"
    t.boolean "lpcc"
    t.boolean "lp"
    t.integer "hourly_rate"
    t.integer "group_rate"
    t.text    "primary_selection_factors", array: true
  end

  create_table "student_details", force: true do |t|
    t.integer "student_preferences_id"
    t.date    "start_date"
    t.date    "completion_date"
    t.integer "hrs_needed"
  end

  create_table "super_details", force: true do |t|
    t.integer "supervisor_preferences_id"
    t.integer "license_number"
    t.integer "years_practicing"
    t.integer "current_candidates"
    t.integer "max_candidates"
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone",                  limit: 10
    t.string   "address"
    t.integer  "zip"
    t.string   "gender"
    t.boolean  "admin"
    t.string   "street_address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "user_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
