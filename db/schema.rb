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

ActiveRecord::Schema.define(:version => 20130324040041) do

  create_table "drivers", :force => true do |t|
    t.integer  "number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "abbreviation"
    t.date     "birthdate"
    t.string   "nationality"
    t.integer  "team_id"
    t.integer  "points"
    t.string   "image"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "country"
    t.string   "city"
    t.string   "name"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "circuit"
    t.integer  "laps"
    t.float    "length"
    t.float    "distance"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "results", :force => true do |t|
    t.integer  "race_id"
    t.integer  "position"
    t.integer  "driver_id"
    t.integer  "grid"
    t.integer  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "base"
    t.string   "country"
    t.string   "team_principal"
    t.string   "technical_chief"
    t.string   "chassis"
    t.string   "engine"
    t.string   "image"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "points"
  end

end
