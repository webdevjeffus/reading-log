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

ActiveRecord::Schema.define(version: 20160315174226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "readers", force: :cascade do |t|
    t.string   "username",      limit: 20, null: false
    t.string   "password",      limit: 20
    t.integer  "user_id",                  null: false
    t.string   "reading_level", limit: 12
    t.string   "firstname",     limit: 24, null: false
    t.string   "lastname",      limit: 24, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "readers", ["user_id"], name: "index_readers_on_user_id", using: :btree

  create_table "rosters", force: :cascade do |t|
    t.string   "name",        limit: 50, null: false
    t.text     "description"
    t.integer  "user_id",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "rosters", ["user_id"], name: "index_rosters_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "firstname",       limit: 24, null: false
    t.string   "lastname",        limit: 24, null: false
    t.string   "username",        limit: 20, null: false
    t.string   "email",                      null: false
    t.string   "password_digest",            null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
