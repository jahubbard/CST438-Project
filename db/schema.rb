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

ActiveRecord::Schema.define(version: 20190421033546) do

  create_table "cameras", force: :cascade do |t|
    t.string "manufacture"
    t.string "model"
    t.string "serial"
    t.string "classroom"
    t.string "ahc_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "model_year"
  end

  create_table "computers", force: :cascade do |t|
    t.string "manufacture"
    t.string "model"
    t.string "serial"
    t.string "string"
    t.string "name"
    t.string "classroom"
    t.date "check_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "model_year"
  end

  create_table "inventories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projectors", force: :cascade do |t|
    t.string "manufacture"
    t.string "model"
    t.string "serial"
    t.string "ahc_number"
    t.string "classroom"
    t.string "mount_type"
    t.string "lamp_type"
    t.string "throw_distance"
    t.date "date_install"
    t.date "date_checked"
    t.date "lamp_change"
    t.date "repair_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "total_lamp_hours"
    t.date "model_year"
  end

  create_table "switchers", force: :cascade do |t|
    t.string "manufacture"
    t.string "model"
    t.string "serial"
    t.string "classroom"
    t.string "ahc_number"
    t.string "audio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "model_year"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
