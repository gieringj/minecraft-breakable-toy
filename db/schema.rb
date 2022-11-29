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

ActiveRecord::Schema.define(version: 2022_11_16_212908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorizations", force: :cascade do |t|
    t.string "video_id"
    t.string "category_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "creators", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "creation_date", null: false
    t.string "youtube_url", null: false
    t.string "rating"
    t.bigint "video_id"
    t.index ["video_id"], name: "index_creators_on_video_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "title", null: false
    t.string "familiarity", null: false
    t.string "video_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "upload_date", null: false
    t.string "url", null: false
    t.string "rating"
    t.string "familiarity"
    t.string "video_type"
    t.bigint "creator_id"
    t.bigint "list_id"
    t.index ["creator_id"], name: "index_videos_on_creator_id"
    t.index ["list_id"], name: "index_videos_on_list_id"
  end

end
