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

ActiveRecord::Schema.define(:version => 20120722162347) do

  create_table "customers", :force => true do |t|
    t.boolean  "is_active"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "table_id"
    t.boolean  "is_flagged",    :default => false
  end

  create_table "dishes", :force => true do |t|
    t.integer   "menu_id"
    t.timestamp "created_at",                        :null => false
    t.timestamp "updated_at",                        :null => false
    t.string    "name"
    t.decimal   "price"
    t.text      "description"
    t.string    "image_file_name"
    t.string    "image_content_type"
    t.integer   "image_file_size"
    t.timestamp "image_updated_at"
    t.integer   "upvotes",            :default => 0
    t.integer   "downvotes",          :default => 0
    t.integer   "order_id"
  end

  create_table "menus", :force => true do |t|
    t.integer   "restaurant_id"
    t.timestamp "created_at",    :null => false
    t.timestamp "updated_at",    :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer   "customer_id"
    t.timestamp "created_at",  :null => false
    t.timestamp "updated_at",  :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer   "user_id"
    t.integer   "dish_id"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
    t.integer   "value"
    t.text      "comment"
  end

  create_table "restaurants", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at",                             :null => false
    t.timestamp "updated_at",                             :null => false
    t.string    "email",                  :default => "", :null => false
    t.string    "encrypted_password",     :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
  end

  add_index "restaurants", ["email"], :name => "index_restaurants_on_email", :unique => true
  add_index "restaurants", ["reset_password_token"], :name => "index_restaurants_on_reset_password_token", :unique => true

  create_table "users", :force => true do |t|
    t.timestamp "created_at",      :null => false
    t.timestamp "updated_at",      :null => false
    t.string    "first_name"
    t.string    "last_name"
    t.string    "profile_pic_url"
    t.string    "facebook_id"
  end

end
