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

ActiveRecord::Schema.define(:version => 20120515174937) do

  create_table "problems", :force => true do |t|
    t.string   "title"
    t.string   "text_description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "solutions", :force => true do |t|
    t.string   "solution_file_url"
    t.string   "text_description"
    t.integer  "user_ID"
    t.integer  "problem_ID"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "password"
    t.boolean  "Is_Admin"
    t.integer  "Solution_ID"
    t.integer  "Problem_ID"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
