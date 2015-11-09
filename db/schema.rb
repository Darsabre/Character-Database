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

ActiveRecord::Schema.define(version: 20151105191036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "name"
    t.integer  "intel"
    t.integer  "wits"
    t.integer  "res"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "stam"
    t.integer  "cha"
    t.integer  "manip"
    t.integer  "comp"
    t.integer  "academics"
    t.integer  "computer"
    t.integer  "crafts"
    t.integer  "investigation"
    t.integer  "medicine"
    t.integer  "occult"
    t.integer  "politics"
    t.integer  "science"
    t.integer  "athletics"
    t.integer  "brawl"
    t.integer  "drive"
    t.integer  "firearms"
    t.integer  "larceny"
    t.integer  "stealth"
    t.integer  "survival"
    t.integer  "weaponry"
    t.integer  "animalken"
    t.integer  "empathy"
    t.integer  "expression"
    t.integer  "intimidation"
    t.integer  "persuasion"
    t.integer  "socialize"
    t.integer  "streetwise"
    t.integer  "subterfuge"
    t.string   "meritlist"
    t.string   "powerlist"
    t.string   "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters", ["player_id"], name: "index_characters_on_player_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "player_name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: :cascade do |t|
    t.string "story_name"
    t.string "description"
    t.string "ownedbyplayer"
  end

end
