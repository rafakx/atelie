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

ActiveRecord::Schema.define(version: 20160308060024) do

  create_table "administrators", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.string   "name"
    t.string   "metrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "description"
    t.string   "url"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "images", ["product_id"], name: "index_images_on_product_id"

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "product_categories", ["category_id"], name: "index_product_categories_on_category_id"
  add_index "product_categories", ["product_id"], name: "index_product_categories_on_product_id"

  create_table "product_details", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "detail_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_details", ["detail_id"], name: "index_product_details_on_detail_id"
  add_index "product_details", ["product_id"], name: "index_product_details_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "administrator_id"
    t.boolean  "publish"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "products", ["administrator_id"], name: "index_products_on_administrator_id"

  create_table "settings", force: :cascade do |t|
    t.string   "site_name"
    t.integer  "product_per_page"
    t.boolean  "under_maintenance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end