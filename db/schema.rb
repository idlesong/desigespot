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

ActiveRecord::Schema.define(version: 20141202013914) do

  create_table "comments", force: true do |t|
    t.text     "content"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "design_id"
  end

  create_table "designers", force: true do |t|
    t.string   "name"
    t.string   "sex"
    t.string   "prefer_style"
    t.string   "prefer_household"
    t.string   "photo"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "password_digest"
  end

  create_table "designs", force: true do |t|
    t.string   "name"
    t.string   "stage"
    t.string   "style"
    t.string   "household"
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.integer  "designer_id"
  end

  create_table "replies", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topic_id"
    t.integer  "designer_id"
  end

  create_table "requests", force: true do |t|
    t.string   "name"
    t.string   "graph2d"
    t.string   "response"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "designer_id"
  end

end
