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

ActiveRecord::Schema.define(version: 20170428053839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favalbums", force: :cascade do |t|
    t.string   "name"
    t.string   "artist"
    t.integer  "popularity"
    t.string   "releasedate"
    t.integer  "user_id"
    t.string   "album_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "artist_id"
  end

  add_index "favalbums", ["user_id"], name: "index_favalbums_on_user_id", using: :btree

  create_table "favartists", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favartists", ["user_id"], name: "index_favartists_on_user_id", using: :btree

  create_table "favtracks", force: :cascade do |t|
    t.string   "name"
    t.string   "track_id"
    t.string   "album_id"
    t.string   "album"
    t.integer  "popularity"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favtracks", ["user_id"], name: "index_favtracks_on_user_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "pictures", ["user_id"], name: "index_pictures_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "string"
    t.string   "body"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.integer  "age"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "favalbums", "users"
  add_foreign_key "favartists", "users"
  add_foreign_key "favtracks", "users"
  add_foreign_key "pictures", "users"
  add_foreign_key "posts", "users"
end
