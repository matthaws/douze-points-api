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

ActiveRecord::Schema.define(version: 20180202212545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "body", null: false
    t.integer "parent_id"
    t.string "commentable_type"
    t.bigint "commentable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
  end

  create_table "contests", force: :cascade do |t|
    t.integer "year", null: false
    t.integer "winning_entry_id"
    t.string "location"
    t.integer "host_country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_country_id"], name: "index_contests_on_host_country_id"
    t.index ["winning_entry_id"], name: "index_contests_on_winning_entry_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
    t.string "flag_url"
    t.boolean "big_five", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_countries_on_name"
  end

  create_table "entries", force: :cascade do |t|
    t.string "artist"
    t.string "song_title"
    t.integer "final_score"
    t.integer "final_ranking"
    t.string "video_url"
    t.boolean "finalist", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id", null: false
    t.integer "contest_id", null: false
    t.string "language"
  end

  create_table "scoresheets", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.string "name", null: false
    t.integer "contest_id", null: false
  end

  create_table "scorings", force: :cascade do |t|
    t.integer "song_score"
    t.integer "dance_score"
    t.integer "cheese_score"
    t.integer "bonus_points"
    t.text "bonus_comment"
    t.text "score_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "scoresheet_id", null: false
    t.integer "entry_id", null: false
    t.integer "costume_score"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.text "bio"
    t.string "avatar_url"
    t.string "email"
    t.string "uid"
    t.string "provider"
    t.string "oauth_token"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["uid"], name: "index_users_on_uid"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
