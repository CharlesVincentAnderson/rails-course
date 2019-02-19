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

ActiveRecord::Schema.define(version: 2019_02_19_010546) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "num_holes"
    t.integer "hole1_par"
    t.integer "hole2_par"
    t.integer "hole3_par"
    t.integer "hole4_par"
    t.integer "hole5_par"
    t.integer "hole6_par"
    t.integer "hole7_par"
    t.integer "hole8_par"
    t.integer "hole9_par"
    t.integer "hole10_par"
    t.integer "hole11_par"
    t.integer "hole12_par"
    t.integer "hole13_par"
    t.integer "hole14_par"
    t.integer "hole15_par"
    t.integer "hole16_par"
    t.integer "hole17_par"
    t.integer "hole18_par"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamecards", force: :cascade do |t|
    t.integer "score1"
    t.integer "score2"
    t.integer "score3"
    t.integer "score4"
    t.integer "score5"
    t.integer "score6"
    t.integer "score7"
    t.integer "score8"
    t.integer "score9"
    t.integer "score10"
    t.integer "score11"
    t.integer "score12"
    t.integer "score13"
    t.integer "score14"
    t.integer "score15"
    t.integer "score16"
    t.integer "score17"
    t.integer "score18"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
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

end
