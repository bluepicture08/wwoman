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

ActiveRecord::Schema.define(version: 20181102194619) do

  create_table "likes", force: :cascade do |t|
    t.string   "offline_id"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["offline_id"], name: "index_likes_on_offline_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "offline_replies", force: :cascade do |t|
    t.text     "content"
    t.integer  "offline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offlines", force: :cascade do |t|
    t.string   "off_title"
    t.text     "off_content"
    t.text     "off_tutor_content"
    t.text     "off_summary"
    t.string   "offimage"
    t.string   "offthumbnail"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "online_replies", force: :cascade do |t|
    t.text     "content"
    t.integer  "online_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "onlines", force: :cascade do |t|
    t.string   "on_title"
    t.text     "on_content"
    t.text     "on_summary"
    t.string   "onimage"
    t.string   "onthumbnail"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "qnas", force: :cascade do |t|
    t.text     "question"
    t.string   "qna_name"
    t.string   "qna_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "tutors", ["email"], name: "index_tutors_on_email", unique: true
  add_index "tutors", ["reset_password_token"], name: "index_tutors_on_reset_password_token", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
