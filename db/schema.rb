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

ActiveRecord::Schema.define(version: 20150614203024) do

  create_table "badges", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "score"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_id"
  end

  create_table "checkins", force: true do |t|
    t.text     "description"
    t.datetime "date_time"
    t.string   "picture"
    t.string   "user_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ingredients"
    t.string   "category_name"
  end

  create_table "has_badges", force: true do |t|
    t.string   "user_id"
    t.integer  "badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "calories"
    t.string   "price"
  end

  create_table "plans", force: true do |t|
    t.string   "user_id"
    t.string   "name"
    t.text     "plan_details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date_time"
  end

  create_table "receipe_ingredients", force: true do |t|
    t.string   "receipe_id"
    t.string   "ingredient_id"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "message"
    t.integer  "score"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ingredients"
    t.string   "category_name"
    t.string   "picture"
  end

  create_table "users", force: true do |t|
    t.string   "fb_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
