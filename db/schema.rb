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

ActiveRecord::Schema.define(:version => 20121004232956) do

  create_table "books", :force => true do |t|
    t.string  "title"
    t.string  "author"
    t.integer "no_of_pages"
    t.integer "isbn",        :default => 0
  end

  create_table "reviews", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "date"
    t.integer  "book_id"
  end

  add_index "reviews", ["book_id"], :name => "index_reviews_on_book_id"

end
