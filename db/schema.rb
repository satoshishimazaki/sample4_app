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

ActiveRecord::Schema.define(version: 20140922023515) do

  create_table "articles", force: true do |t|
    t.string   "herenowtitle"
    t.string   "title"
    t.string   "content"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["store_id", "created_at"], name: "index_articles_on_store_id_and_created_at"

  create_table "articles_images", force: true do |t|
    t.integer  "article_id",   null: false
    t.binary   "data"
    t.string   "content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles_images", ["article_id"], name: "index_articles_images_on_article_id"

  create_table "stores", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.integer  "tell"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "stores", ["email"], name: "index_stores_on_email", unique: true
  add_index "stores", ["remember_token"], name: "index_stores_on_remember_token"

end
