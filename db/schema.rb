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

ActiveRecord::Schema.define(:version => 20110218003259) do

  create_table "albums", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description", :null => false
    t.integer  "year",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["description"], :name => "index_albums_on_description"
  add_index "albums", ["name"], :name => "index_albums_on_name"

  create_table "songs", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "runtime"
    t.integer  "album_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
