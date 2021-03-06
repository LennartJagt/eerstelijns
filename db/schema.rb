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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140422183119) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.decimal  "price",      :precision => 10, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.integer  "street_number"
    t.string   "zip_code"
    t.string   "town"
    t.integer  "practice_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "animal_activities", :force => true do |t|
    t.integer  "animal_id"
    t.integer  "activity_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "animals", :force => true do |t|
    t.integer  "visit_id"
    t.string   "name"
    t.string   "specie"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "practices", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "visits", :force => true do |t|
    t.date     "date"
    t.integer  "practice_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
