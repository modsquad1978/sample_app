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

ActiveRecord::Schema.define(:version => 20120315163105) do

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "work_phone"
    t.string   "mobile_phone"
    t.string   "company"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "linkedin"
    t.string   "facebook"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "contacts", ["email"], :name => "index_contacts_on_email", :unique => true

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "projects", :force => true do |t|
    t.string   "project_number"
    t.string   "site"
    t.string   "project_name"
    t.string   "requestor"
    t.string   "customer"
    t.string   "status"
    t.string   "department"
    t.string   "asset_number"
    t.string   "type"
    t.string   "model"
    t.string   "serial_number"
    t.string   "manufacturer"
    t.string   "room_num"
    t.string   "doc_num"
    t.string   "doc_title"
    t.string   "application"
    t.string   "verion"
    t.string   "vendor"
    t.date     "due_date"
    t.date     "revalidation"
    t.string   "assigned_to"
    t.date     "assigned_on"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "resources", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "title"
    t.string   "home_addr"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.date     "hired_date"
    t.decimal  "base_rate"
    t.text     "resume"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
