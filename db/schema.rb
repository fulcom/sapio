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

ActiveRecord::Schema.define(version: 2019_09_05_104313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "act_bookings", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "used", default: false
    t.index ["activity_id"], name: "index_act_bookings_on_activity_id"
    t.index ["user_id"], name: "index_act_bookings_on_user_id"
  end

  create_table "activities", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "photo_one"
    t.string "photo_two"
    t.string "photo_three"
    t.boolean "favorite"
    t.date "start_date"
    t.date "end_date"
    t.float "avg_rating"
    t.bigint "place_id"
    t.bigint "subscription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subscription_number"
    t.index ["place_id"], name: "index_activities_on_place_id"
    t.index ["subscription_id"], name: "index_activities_on_subscription_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_favorites_on_activity_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "zip_code"
    t.string "access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "country"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "act_booking_id"
    t.index ["act_booking_id"], name: "index_reviews_on_act_booking_id"
  end

  create_table "subs_bookings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "subscription_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subscription_number"
    t.index ["subscription_id"], name: "index_subs_bookings_on_subscription_id"
    t.index ["user_id"], name: "index_subs_bookings_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subscription_number"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "gender"
    t.string "address"
    t.string "zip_code"
    t.string "city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "act_bookings", "activities"
  add_foreign_key "act_bookings", "users"
  add_foreign_key "activities", "places"
  add_foreign_key "activities", "subscriptions"
  add_foreign_key "favorites", "activities"
  add_foreign_key "favorites", "users"
  add_foreign_key "subs_bookings", "subscriptions"
  add_foreign_key "subs_bookings", "users"
end
