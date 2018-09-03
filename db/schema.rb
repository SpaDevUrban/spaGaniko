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

ActiveRecord::Schema.define(version: 20180615160724) do

  create_table "facilities", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.text "description"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "therapies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "value", precision: 8, scale: 2
    t.decimal "decimal", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "therapies_therapists", id: false, force: :cascade do |t|
    t.integer "therapy_id", null: false
    t.integer "therapist_id", null: false
    t.index ["therapist_id", "therapy_id"], name: "index_therapies_therapists_on_therapist_id_and_therapy_id"
    t.index ["therapy_id", "therapist_id"], name: "index_therapies_therapists_on_therapy_id_and_therapist_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "cpf"
    t.string "phone1"
    t.string "phone2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
