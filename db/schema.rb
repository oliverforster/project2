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

ActiveRecord::Schema.define(version: 20160224113446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.string "information"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "challenge_id"
    t.string  "votes"
    t.text    "method"
    t.text    "ingredients"
    t.string  "name"
    t.string  "recipe_pic"
    t.string  "chef_id"
  end

  create_table "recipes_users", id: false, force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "user_id",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "full_name"
    t.string  "email"
    t.string  "user_type"
    t.string  "password_digest"
    t.string  "recipes"
    t.integer "start_date"
    t.string  "password"
    t.string  "profile_pic"
    t.string  "username"
  end

end
