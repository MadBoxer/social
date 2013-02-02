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

ActiveRecord::Schema.define(:version => 20130105135235) do

  create_table "albums", :force => true do |t|
    t.string   "name",                       :null => false
    t.string   "alias",                      :null => false
    t.string   "announce",    :limit => 512
    t.text     "description"
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name",       :limit => 25, :null => false
    t.string   "alias",      :limit => 25, :null => false
    t.integer  "country_id",               :null => false
    t.string   "city_image"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "countries", :force => true do |t|
    t.string "name", :limit => 25, :null => false
  end

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.integer  "university_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "material_types", :force => true do |t|
    t.string "name", :limit => 20, :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "material_type"
    t.boolean  "active"
    t.boolean  "trash"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "path"
    t.string   "description", :limit => 1024
    t.integer  "album_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.string   "shash"
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "setting_images", :force => true do |t|
    t.integer  "setting_id", :null => false
    t.string   "path",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "setting_types", :force => true do |t|
    t.string "name",  :limit => 20, :null => false
    t.string "alias", :limit => 20, :null => false
  end

  create_table "settings", :force => true do |t|
    t.integer "setting_type_id",               :null => false
    t.string  "value",                         :null => false
    t.integer "sort"
    t.string  "alias",           :limit => 20
  end

  create_table "universities", :force => true do |t|
    t.string   "name",                     :null => false
    t.string   "abbr",       :limit => 20, :null => false
    t.integer  "city_id",                  :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "password"
    t.integer  "marital_status_id"
    t.integer  "city_id"
    t.string   "mobile_phone"
    t.string   "skype"
    t.string   "web_site"
    t.integer  "politic_id"
    t.integer  "religion_id"
    t.text     "activities"
    t.text     "favourite_films"
    t.text     "favourite_books"
    t.text     "favourite_tv_shows"
    t.text     "favourite_games"
    t.text     "favourite_phrases"
    t.text     "about_myself"
    t.integer  "material_id"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.integer  "sex"
    t.date     "birth_date"
    t.boolean  "active",                           :default => true,  :null => false
    t.boolean  "trash",                            :default => false, :null => false
    t.string   "native_city"
    t.string   "user_hash",          :limit => 32,                    :null => false
    t.string   "avatar"
  end

  add_index "users", ["email"], :name => "email_index"
  add_index "users", ["name"], :name => "name_index"
  add_index "users", ["surname"], :name => "surname_index"

  create_table "users_universities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "university_id"
    t.integer  "faculty_id"
    t.integer  "studentstatus_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
