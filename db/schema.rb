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

ActiveRecord::Schema.define(version: 20150211211233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.string   "words"
    t.integer  "vote"
    t.integer  "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["picture_id"], name: "index_comments_on_picture_id", using: :btree

  create_table "picture_votes", force: :cascade do |t|
    t.integer  "direction"
    t.string   "user"
    t.integer  "picture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "picture_votes", ["picture_id"], name: "index_picture_votes_on_picture_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "title"
    t.string   "caption"
    t.string   "url"
    t.integer  "vote"
    t.boolean  "hot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "pictures"
  add_foreign_key "picture_votes", "pictures"
end
