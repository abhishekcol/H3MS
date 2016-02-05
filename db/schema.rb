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

ActiveRecord::Schema.define(version: 20141009125423) do

  create_table "blocks", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "code"
    t.integer  "attention_level"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "complexitylevels", force: true do |t|
    t.integer  "complexitylevel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_id",    null: false
  end

  create_table "shifts", force: true do |t|
    t.string   "shiftname"
    t.string   "shortcode"
    t.string   "colorcode"
    t.time     "shiftstarttime"
    t.time     "shiftendtime"
    t.time     "mealstarttime"
    t.time     "mealendtime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taskpriorities", force: true do |t|
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "taskname"
    t.string   "taskinotherlanguage"
    t.string   "taskdesc"
    t.string   "shortname"
    t.integer  "complexitylvl"
    t.integer  "taskpriority"
    t.integer  "gender_id"
    t.string   "asset"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
