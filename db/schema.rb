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

ActiveRecord::Schema.define(version: 20160724091902) do

  create_table "campaigns", force: :cascade do |t|
    t.string   "title",                                                    null: false
    t.text     "description",                                              null: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.decimal  "target",            precision: 12, scale: 2, default: 0.0
    t.decimal  "funded",            precision: 12, scale: 2, default: 0.0
    t.date     "end_date"
    t.text     "short_description",                          default: "",  null: false
    t.integer  "title_image_id"
  end

  add_index "campaigns", ["title_image_id"], name: "index_campaigns_on_title_image_id"

  create_table "post_images", force: :cascade do |t|
    t.string   "image_secure_token"
    t.string   "original_filename"
    t.string   "image"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end