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

ActiveRecord::Schema.define(version: 20160724035933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "meats", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_meats", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "meat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["meat_id"], name: "index_restaurant_meats_on_meat_id", using: :btree
    t.index ["restaurant_id"], name: "index_restaurant_meats_on_restaurant_id", using: :btree
  end

  create_table "restaurant_sources", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "source_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["restaurant_id"], name: "index_restaurant_sources_on_restaurant_id", using: :btree
    t.index ["source_id"], name: "index_restaurant_sources_on_source_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "api_id",          default: "f", null: false
    t.string "display_address",               null: false, array: true
    t.string "phone",                         null: false
    t.json   "coordinate",                    null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

end
