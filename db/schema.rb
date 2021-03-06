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

ActiveRecord::Schema.define(version: 20130614192522) do

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
    t.integer  "votes",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_orders", force: true do |t|
    t.string   "name"
    t.decimal  "tax_rate",      precision: 8, scale: 2, default: 0.13
    t.text     "message"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "name"
    t.text     "item"
    t.decimal  "price",          precision: 8, scale: 2
    t.decimal  "tax",            precision: 8, scale: 2
    t.decimal  "total",          precision: 8, scale: 2
    t.text     "note"
    t.integer  "group_order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["group_order_id"], name: "index_orders_on_group_order_id", using: :btree

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
