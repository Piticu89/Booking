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

ActiveRecord::Schema.define(version: 20150122151401) do

  create_table "bookings", force: true do |t|
    t.time     "start"
    t.time     "end"
    t.text     "comentariu"
    t.integer  "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bookings", ["day_id", "created_at"], name: "index_bookings_on_day_id_and_created_at"
  add_index "bookings", ["day_id"], name: "index_bookings_on_day_id"

  create_table "days", force: true do |t|
    t.date     "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
