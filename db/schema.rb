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

ActiveRecord::Schema.define(version: 2020_09_29_122723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "adposts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "adpost_image_file_name"
    t.string "adpost_image_content_type"
    t.integer "adpost_image_file_size"
    t.datetime "adpost_image_updated_at"
    t.integer "price"
    t.integer "year"
    t.string "model"
    t.string "serie"
    t.string "body"
    t.string "gearbox"
    t.string "engine_type"
    t.string "location"
    t.index ["user_id"], name: "index_adposts_on_user_id"
  end

  create_table "rented_cars", force: :cascade do |t|
    t.string "price_per_day"
    t.string "model"
    t.string "serie"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rented_car_image_file_name", null: false
    t.string "rented_car_image_content_type"
    t.integer "rented_car_image_file_size"
    t.datetime "rented_car_image_updated_at"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_rented_cars_on_user_id"
  end

  create_table "rented_leases", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "rented_car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rented_car_id"], name: "index_rented_leases_on_rented_car_id"
    t.index ["user_id"], name: "index_rented_leases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "adposts", "users"
  add_foreign_key "rented_cars", "users"
  add_foreign_key "rented_leases", "rented_cars"
  add_foreign_key "rented_leases", "users"
end
