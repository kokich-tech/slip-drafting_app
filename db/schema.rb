# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_07_111603) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "postal_code"
    t.integer "prefecture_id"
    t.integer "deposit_id"
    t.integer "account"
    t.text "city"
    t.text "house_number"
    t.text "building"
    t.integer "telephone"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "purposepay_id", null: false
    t.text "store_description", null: false
    t.integer "type_id", null: false
    t.integer "price", null: false
    t.text "staff_name"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "re_slips", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "withdrawal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_re_slips_on_user_id"
    t.index ["withdrawal_id"], name: "index_re_slips_on_withdrawal_id"
  end

  create_table "secondtops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "nickname", null: false
    t.string "familyname", null: false
    t.string "firstname", null: false
    t.string "familyname_kana", null: false
    t.string "firstname_kana", null: false
    t.date "bairthday", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "withdrawals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "purpose_id", null: false
    t.text "store_description", null: false
    t.integer "price", null: false
    t.integer "price_10000"
    t.integer "price_5000"
    t.integer "price_1000"
    t.integer "price_500"
    t.integer "price_100"
    t.integer "price_50"
    t.integer "price_5"
    t.integer "price_10"
    t.integer "price_1"
    t.text "staff_name"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_withdrawals_on_user_id"
  end

  add_foreign_key "payments", "users"
  add_foreign_key "re_slips", "users"
  add_foreign_key "re_slips", "withdrawals"
  add_foreign_key "withdrawals", "users"
end
