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

ActiveRecord::Schema.define(version: 20150506235721) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "content",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "friend_relations", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "follower_id", limit: 4
    t.string   "status",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name",     limit: 20
    t.string   "user_email",    limit: 100
    t.string   "user_gender",   limit: 2
    t.date     "user_birthday"
    t.string   "user_avatar",   limit: 45
    t.string   "user_status",   limit: 1
    t.string   "user_confirm",  limit: 40
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
