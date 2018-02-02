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

ActiveRecord::Schema.define(version: 20180202171555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "scoresheets", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "contest_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contest_id"], name: "index_scoresheets_on_contest_id"
    t.index ["user_id", "contest_id"], name: "index_scoresheets_on_user_id_and_contest_id"
  end

  create_table "scorings", force: :cascade do |t|
    t.integer "scoresheet_id"
    t.integer "entry_id"
    t.integer "song_score"
    t.integer "dance_score"
    t.integer "cheese_score"
    t.integer "bonus_points"
    t.text "bonus_comment"
    t.text "score_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scoresheet_id", "entry_id"], name: "index_scorings_on_scoresheet_id_and_entry_id"
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
