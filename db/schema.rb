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

ActiveRecord::Schema.define(:version => 20120408094751) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deal_categoryships", :force => true do |t|
    t.integer  "deal_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deal_categoryships", ["category_id"], :name => "index_deal_categoryships_on_category_id"
  add_index "deal_categoryships", ["deal_id"], :name => "index_deal_categoryships_on_deal_id"

  create_table "deals", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.date     "pubDate"
    t.text     "description"
    t.text     "description_pure"
    t.string   "location"
    t.string   "image"
    t.integer  "store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deals", ["store_id"], :name => "index_deals_on_store_id"

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.text     "detail"
    t.text     "location"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
