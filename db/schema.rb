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

ActiveRecord::Schema.define(version: 20170523101634) do

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cpus", force: :cascade do |t|
    t.string   "cbrand"
    t.string   "cgen"
    t.string   "cfreq"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disks", force: :cascade do |t|
    t.string   "dhdd"
    t.string   "dssd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "displays", force: :cascade do |t|
    t.string   "size"
    t.string   "dtype"
    t.string   "dtouch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gpus", force: :cascade do |t|
    t.string   "cgen"
    t.string   "cbrand"
    t.string   "cram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keyboards", force: :cascade do |t|
    t.string   "backl"
    t.string   "nump"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notebooks", force: :cascade do |t|
    t.string   "model"
    t.string   "weight"
    t.string   "resolution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osystems", force: :cascade do |t|
    t.string   "ostype"
    t.string   "osver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "sname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
