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

ActiveRecord::Schema.define(version: 20150806141619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "aircrafts", force: :cascade do |t|
    t.integer  "manufactuer_id"
    t.string   "serial_number"
    t.string   "ask_price"
    t.string   "contact_company"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_cell_phone"
    t.string   "contact_fax"
    t.string   "contact_email"
    t.string   "contact_website"
    t.text     "unique_selling_point"
    t.string   "airframe_hour"
    t.string   "total_landing"
    t.string   "engine_type"
    t.string   "engine_serial_number"
    t.string   "msp"
    t.string   "left_engine_hour"
    t.string   "left_engine_cylce"
    t.string   "right_engine_hour"
    t.string   "right_engine_cycle"
    t.text     "avionic"
    t.string   "year_painted"
    t.text     "exterior"
    t.text     "interior"
    t.text     "inspection"
    t.string   "condition"
    t.string   "registration"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "slug"
  end

  add_index "aircrafts", ["manufactuer_id"], name: "index_aircrafts_on_manufactuer_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "manufactuers", force: :cascade do |t|
    t.string   "category"
    t.string   "manufactuer"
    t.string   "aircraft_model"
    t.string   "range"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "slug"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "aircraft_id"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.integer  "amount"
    t.datetime "updated_at",  null: false
  end

  add_index "ratings", ["aircraft_id"], name: "index_ratings_on_aircraft_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "aircraft_id"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.integer  "rating"
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["aircraft_id"], name: "index_reviews_on_aircraft_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "watchlists", force: :cascade do |t|
    t.integer  "aircraft_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "watchlists", ["aircraft_id", "user_id"], name: "index_watchlists_on_aircraft_id_and_user_id", unique: true, using: :btree
  add_index "watchlists", ["aircraft_id"], name: "index_watchlists_on_aircraft_id", using: :btree
  add_index "watchlists", ["user_id"], name: "index_watchlists_on_user_id", using: :btree

  add_foreign_key "aircrafts", "manufactuers"
  add_foreign_key "ratings", "aircrafts"
  add_foreign_key "ratings", "users"
  add_foreign_key "reviews", "aircrafts"
  add_foreign_key "reviews", "users"
  add_foreign_key "watchlists", "aircrafts"
  add_foreign_key "watchlists", "users"
end
