# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_03_22_193145) do

  create_table "partners", force: :cascade do |t|
    t.string "name", limit: 10, null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_partners_on_user_id", unique: true
  end

  create_table "principles", force: :cascade do |t|
    t.string "principle_first", limit: 35, null: false
    t.string "principle_second", limit: 35, null: false
    t.string "principle_third", limit: 35, null: false
    t.string "principle_fourth", limit: 35
    t.string "principle_fifth", limit: 35
    t.string "principle_sixth", limit: 35
    t.string "principle_seventh", limit: 35
    t.string "principle_eighth", limit: 35
    t.string "principle_ninth", limit: 35
    t.string "principle_tenth", limit: 35
    t.integer "id_first", null: false
    t.string "why_first", limit: 100, null: false
    t.string "how_first", limit: 100, null: false
    t.string "when_first", limit: 100
    t.string "situation_first", limit: 100
    t.string "where_first", limit: 100
    t.string "who_first", limit: 100
    t.string "what_first", limit: 100
    t.string "other_first", limit: 100
    t.integer "id_second", null: false
    t.string "why_second", limit: 100, null: false
    t.string "how_second", limit: 100, null: false
    t.string "when_second", limit: 100
    t.string "situation_second", limit: 100
    t.string "where_second", limit: 100
    t.string "who_second", limit: 100
    t.string "what_second", limit: 100
    t.string "other_second", limit: 100
    t.integer "id_third", null: false
    t.string "why_third", limit: 100, null: false
    t.string "how_third", limit: 100, null: false
    t.string "when_third", limit: 100
    t.string "situation_third", limit: 100
    t.string "where_third", limit: 100
    t.string "who_third", limit: 100
    t.string "what_third", limit: 100
    t.string "other_third", limit: 100
    t.integer "user_id", null: false
    t.integer "partner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["partner_id"], name: "index_principles_on_partner_id"
    t.index ["user_id"], name: "index_principles_on_user_id", unique: true
  end

  create_table "report_details", force: :cascade do |t|
    t.text "content", null: false
    t.integer "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id"], name: "index_report_details_on_report_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "title", null: false
    t.text "decision"
    t.float "todo_progress"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "partners", "users"
  add_foreign_key "principles", "partners"
  add_foreign_key "principles", "users"
  add_foreign_key "report_details", "reports"
  add_foreign_key "reports", "users"
end
