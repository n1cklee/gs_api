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

ActiveRecord::Schema.define(version: 20130818223417) do

  create_table "attributes", force: true do |t|
    t.string   "value"
    t.integer  "user_id"
    t.integer  "house_id"
    t.integer  "scale_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "review_id"
  end

  add_index "attributes", ["house_id"], name: "index_attributes_on_house_id"
  add_index "attributes", ["item_id"], name: "index_attributes_on_item_id"
  add_index "attributes", ["review_id"], name: "index_attributes_on_review_id"
  add_index "attributes", ["scale_id"], name: "index_attributes_on_scale_id"
  add_index "attributes", ["user_id"], name: "index_attributes_on_user_id"

  create_table "houses", force: true do |t|
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "address1"
    t.string   "address2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "zip"
  end

  create_table "items", force: true do |t|
    t.text     "question"
    t.string   "type"
    t.integer  "scale_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["scale_id"], name: "index_items_on_scale_id"

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.integer  "house_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["house_id"], name: "index_reviews_on_house_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "scales", force: true do |t|
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "scales", ["user_id"], name: "index_scales_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
