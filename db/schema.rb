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

ActiveRecord::Schema.define(version: 20151209231004) do

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "professor"
    t.text     "description"
    t.string   "poster_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.text     "text"
    t.integer  "rating_out_of_ten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["course_id"], name: "index_reviews_on_course_id"
  add_index "reviews", ["student_id"], name: "index_reviews_on_student_id"

  create_table "students", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
  end

end
