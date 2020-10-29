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

ActiveRecord::Schema.define(version: 2020_10_29_001101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adposts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.integer "year"
    t.string "model"
    t.string "serie"
    t.string "body"
    t.string "gearbox"
    t.string "engine_type"
    t.string "location"
    t.string "avatar_file_name"
    t.index ["user_id"], name: "index_adposts_on_user_id"
  end

  create_table "chat_messages", force: :cascade do |t|
    t.bigint "chat_id"
    t.bigint "user_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_chat_messages_on_chat_id"
    t.index ["user_id"], name: "index_chat_messages_on_user_id"
  end

  create_table "chats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipient_id"
    t.integer "sender_id"
    t.index ["recipient_id", "sender_id"], name: "index_chats_on_recipient_id_and_sender_id", unique: true
    t.index ["recipient_id"], name: "index_chats_on_recipient_id"
    t.index ["sender_id"], name: "index_chats_on_sender_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "rented_cars", force: :cascade do |t|
    t.string "price_per_day"
    t.string "model"
    t.string "serie"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "avatar_file_name"
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

  add_foreign_key "adposts", "users"
  add_foreign_key "chat_messages", "chats"
  add_foreign_key "chat_messages", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "rented_cars", "users"
  add_foreign_key "rented_leases", "rented_cars"
  add_foreign_key "rented_leases", "users"
end
