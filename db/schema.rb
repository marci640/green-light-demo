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

ActiveRecord::Schema.define(version: 20180514030255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ads", force: :cascade do |t|
    t.integer "business_id"
    t.string "image"
    t.integer "availability"
    t.string "duration"
    t.string "zip_code"
    t.string "radius"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "monthly_rate"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "business_name"
    t.string "website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "cars", force: :cascade do |t|
    t.integer "driver_id"
    t.integer "ad_id"
    t.string "make"
    t.string "model"
    t.string "year"
    t.float "mileage"
    t.string "car_image"
    t.string "odometer_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "street_address_1"
    t.string "street_address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "license_plate_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
