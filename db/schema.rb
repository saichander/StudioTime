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

ActiveRecord::Schema.define(version: 2019_07_23_161759) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "date"
    t.float "actual_amount"
    t.string "coupon"
    t.float "final_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "image_url"
    t.integer "studio_id"
    t.string "dimensions"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_images_on_studio_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.integer "user_id"
    t.string "type"
    t.string "payment_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payment_methods_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "booking_id"
    t.string "status"
    t.integer "payment_method_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["payment_method_id"], name: "index_payments_on_payment_method_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "studio_id"
    t.integer "rating"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_reviews_on_studio_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "description"
    t.string "type"
    t.boolean "is_verfied"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end