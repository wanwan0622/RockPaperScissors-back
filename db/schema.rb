ActiveRecord::Schema.define(version: 2024_03_11_134820) do

  create_table "principles", force: :cascade do |t|
    t.string "principle_first", null: false
    t.string "principle_second", null: false
    t.string "principle_third", null: false
    t.string "principle_fourth"
    t.string "principle_fifth"
    t.string "principle_sixth"
    t.string "principle_seventh"
    t.string "principle_eighth"
    t.string "principle_ninth"
    t.string "principle_tenth"
    t.string "why_first"
    t.string "what_first"
    t.string "when_first"
    t.string "who_first"
    t.string "how_first"
    t.string "where_first"
    t.string "other_first"
    t.string "why_second"
    t.string "what_second"
    t.string "when_second"
    t.string "who_second"
    t.string "how_second"
    t.string "where_second"
    t.string "other_second"
    t.string "why_third"
    t.string "what_third"
    t.string "when_third"
    t.string "who_third"
    t.string "how_third"
    t.string "where_third"
    t.string "other_third"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

end
