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

ActiveRecord::Schema.define(:version => 20120225200704) do

  create_table "institution_categories", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "institutions", :force => true do |t|
    t.string   "abbreviation"
    t.string   "name"
    t.integer  "institution_category_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "mbb_channels", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "mbb_connections", :force => true do |t|
    t.decimal  "provider_subscriber_id"
    t.string   "institution_subscriber_id"
    t.date     "date_of_birth"
    t.string   "institution_abbreviation"
    t.string   "institution_name"
    t.date     "transaction_date"
    t.string   "channel_name"
    t.string   "product_name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "mbb_connections_stagings", :force => true do |t|
    t.decimal  "provider_subscriber_id"
    t.string   "institution_subscriber_id"
    t.date     "date_of_birth"
    t.string   "institution_abbreviation"
    t.string   "institution_name"
    t.date     "transaction_date"
    t.string   "channel_name"
    t.string   "product_name"
    t.integer  "institution_id"
    t.integer  "channel_id"
    t.integer  "product_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "mbb_institution_abbreviations", :force => true do |t|
    t.integer  "institution_id"
    t.string   "abbreviation"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "mbb_products", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "mbb_seasons", :force => true do |t|
    t.date     "season_begin"
    t.date     "season_end"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
