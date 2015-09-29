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

ActiveRecord::Schema.define(version: 20150929175009) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.text   "description"
    t.string "title"
  end

  create_table "points", force: :cascade do |t|
    t.integer "value"
    t.integer "event_id"
    t.integer "sender_id"
    t.integer "receiver_id"
  end

  add_index "points", ["event_id"], name: "index_points_on_event_id", using: :btree

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "volunteer_experience"
    t.string "location"
    t.string "bio"
    t.string "email"
    t.string "phone"
  end

  add_foreign_key "points", "events"
end
