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

ActiveRecord::Schema.define(version: 20150912113248) do

  create_table "conferences", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.text     "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "schedule_slots", force: :cascade do |t|
    t.integer  "schedule_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "conference_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.text     "description"
    t.string   "facilitator"
    t.integer  "points"
    t.integer  "conference_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "schedule_slots_id"
  end

  add_index "topics", ["schedule_slots_id"], name: "index_topics_on_schedule_slots_id"

end
