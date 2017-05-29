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

ActiveRecord::Schema.define(version: 20170517124046) do

  create_table "invites", force: :cascade do |t|
    t.integer  "inviter_id"
    t.integer  "invitee_id"
    t.integer  "movie_id"
    t.datetime "meet_at"
    t.string   "location"
    t.text     "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invitee_id"], name: "index_invites_on_invitee_id"
    t.index ["inviter_id"], name: "index_invites_on_inviter_id"
    t.index ["movie_id"], name: "index_invites_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "image_thumb"
    t.string   "image_middle"
    t.string   "image_large"
    t.text     "description"
    t.text     "casts"
    t.text     "directors"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname"
    t.string   "wechat_id"
    t.string   "avatar_url"
    t.string   "open_id"
    t.string   "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["open_id"], name: "index_users_on_open_id", unique: true
  end

end
