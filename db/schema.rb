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

ActiveRecord::Schema.define(version: 20140823115337) do

  create_table "line_items", force: true do |t|
    t.string   "food_type"
    t.integer  "quantity"
    t.string   "name"
    t.decimal  "price",      precision: 8, scale: 2
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id"

  create_table "orders", force: true do |t|
    t.string   "number"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "table"
  end

  create_table "orders_sandwiches", force: true do |t|
    t.integer "order_id"
    t.integer "sandwich_id"
  end

  add_index "orders_sandwiches", ["order_id"], name: "index_orders_sandwiches_on_order_id"
  add_index "orders_sandwiches", ["sandwich_id"], name: "index_orders_sandwiches_on_sandwich_id"

  create_table "sandwiches", force: true do |t|
    t.integer  "quantity",   default: 1
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
