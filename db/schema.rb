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

ActiveRecord::Schema.define(:version => 20140319173512) do

  create_table "alerts", :force => true do |t|
    t.integer "tvshow_id"
    t.string  "phone_number"
  end

  create_table "episodes", :force => true do |t|
    t.integer "tvshow_id"
    t.string  "season_episode"
    t.string  "date"
    t.string  "name"
  end

  create_table "tvshows", :force => true do |t|
    t.string "name"
  end

end
