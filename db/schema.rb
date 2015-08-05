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

ActiveRecord::Schema.define(version: 20150805154511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "text"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "amount"
    t.string   "first_date"
    t.string   "expiration_date"
    t.string   "status"
    t.integer  "refriger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foods", ["refriger_id"], name: "index_foods_on_refriger_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "photo_url"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "refrigers", force: :cascade do |t|
    t.string   "person"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "foods", "refrigers"
end
