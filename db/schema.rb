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

ActiveRecord::Schema.define(version: 20161107215800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "fashion_items", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "sex"
    t.string   "brand"
    t.string   "description"
    t.string   "category"
    t.string   "sub_category"
    t.boolean  "sale",                                            default: false, null: false
    t.integer  "percentage_off"
    t.decimal  "price",                   precision: 8, scale: 2
    t.string   "unique_affiliate_url"
    t.string   "shipped_from"
    t.decimal  "sale_price",              precision: 8, scale: 2, default: 0.0
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.string   "item_image_file_name"
    t.string   "item_image_content_type"
    t.integer  "item_image_file_size"
    t.datetime "item_image_updated_at"
    t.string   "short_description"
    t.boolean  "featured_item"
    t.boolean  "staff_picks"
    t.boolean  "wwshipping"
    t.datetime "duration"
  end

  add_index "fashion_items", ["user_id"], name: "index_fashion_items_on_user_id", using: :btree

  create_table "shop_the_look_images", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "shop_look_image_file_name"
    t.string   "shop_look_image_content_type"
    t.integer  "shop_look_image_file_size"
    t.datetime "shop_look_image_updated_at"
    t.string   "gender"
    t.string   "ww_shipping"
    t.boolean  "featured_item"
    t.boolean  "staff_picks"
    t.string   "describe_the_look"
  end

  add_index "shop_the_look_images", ["user_id"], name: "index_shop_the_look_images_on_user_id", using: :btree

  create_table "shop_the_look_items", force: :cascade do |t|
    t.integer  "shop_the_look_image_id"
    t.string   "gender"
    t.string   "category"
    t.string   "sub_category"
    t.string   "brand"
    t.decimal  "price",                  precision: 8, scale: 2
    t.boolean  "sale",                                           default: false, null: false
    t.decimal  "sale_price",             precision: 8, scale: 2, default: 0.0
    t.string   "unique_affiliate_url"
    t.string   "shipped_from"
    t.integer  "percentage_off"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.string   "description"
  end

  add_index "shop_the_look_items", ["shop_the_look_image_id"], name: "index_shop_the_look_items_on_shop_the_look_image_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "fashion_items", "users"
  add_foreign_key "shop_the_look_images", "users"
  add_foreign_key "shop_the_look_items", "shop_the_look_images"
end
