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

ActiveRecord::Schema.define(:version => 20120227135000) do

  create_table "product_images", :force => true do |t|
    t.integer  "product_id"
    t.string   "url_s"
    t.string   "url_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "price",      :precision => 10, :scale => 0
    t.string   "url"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "share_images", :force => true do |t|
    t.integer  "share_id"
    t.string   "img_s"
    t.string   "img_b"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shares", :force => true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.string   "title"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "nick_name"
    t.string   "real_name"
    t.integer  "sex"
    t.date     "birthdat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
