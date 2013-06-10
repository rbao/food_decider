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

ActiveRecord::Schema.define(version: 20130610023052) do

  create_table "choices", force: true do |t|
    t.integer  "decision_id"
    t.integer  "restaurant_id"
    t.integer  "points",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "choices", ["decision_id"], name: "index_choices_on_decision_id", using: :btree

  create_table "decisions", force: true do |t|
    t.string   "name"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "menu"
    t.string   "address"
    t.string   "phone"
    t.string   "site"
    t.string   "yelp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
