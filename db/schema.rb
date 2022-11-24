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

ActiveRecord::Schema.define(version: 2022_11_24_084510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_mdrs", force: :cascade do |t|
    t.string "payment_mode"
    t.float "rate_amount"
    t.string "rate_type"
    t.integer "upto_amount"
    t.integer "from_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bank_id"
    t.index ["bank_id"], name: "index_bank_mdrs_on_bank_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string "bank_name"
    t.integer "account_no"
    t.string "ifsc_code"
    t.string "branch_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "serial_no"
    t.string "remarks"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_mdrs", force: :cascade do |t|
    t.string "payment_mode"
    t.float "rate_amount"
    t.string "rate_type"
    t.integer "upto_amount"
    t.integer "from_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "store_id"
    t.index ["store_id"], name: "index_store_mdrs_on_store_id"
  end

  create_table "store_terminals", force: :cascade do |t|
    t.string "remarks"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "store_id"
    t.bigint "device_id"
    t.bigint "terminal_id"
    t.index ["device_id"], name: "index_store_terminals_on_device_id"
    t.index ["store_id"], name: "index_store_terminals_on_store_id"
    t.index ["terminal_id"], name: "index_store_terminals_on_terminal_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name", limit: 100
    t.string "store_address"
    t.string "store_phone_number"
    t.string "owner_name"
    t.string "store_owner_phone_number"
    t.string "email"
    t.string "gst_no"
    t.binary "gst_certificate"
    t.string "pan_no"
    t.binary "pan_card"
    t.string "trade_license"
    t.binary "trade_license_certificate"
    t.string "bank_name"
    t.integer "account_no"
    t.string "ifsc_code"
    t.string "bank_branch_address"
    t.binary "uploading_of_cancelled_cheque"
    t.string "dealer_name"
    t.string "dealer_sales_person"
    t.binary "store_acquisition_form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "bank_id"
    t.index ["bank_id"], name: "index_stores_on_bank_id"
  end

  create_table "terminals", force: :cascade do |t|
    t.integer "tid"
    t.string "remarks"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "tid"
    t.integer "pos"
    t.string "acquirer"
    t.integer "mid"
    t.integer "batch_no"
    t.integer "card_no"
    t.string "name"
    t.string "card_issuer"
    t.string "card_type"
    t.string "card_network"
    t.string "card_colour"
    t.integer "txn_id"
    t.integer "invoice"
    t.integer "approval_code"
    t.string "type"
    t.integer "amount"
    t.integer "tip_amount"
    t.string "currency"
    t.datetime "date"
    t.string "status"
    t.datetime "settlement_date"
    t.string "cashier"
    t.integer "bill_invoice"
    t.integer "rrn"
    t.integer "emi_txn"
    t.integer "emi_month"
    t.string "contactless"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "bank_mdrs", "banks"
  add_foreign_key "store_mdrs", "stores"
  add_foreign_key "store_terminals", "devices"
  add_foreign_key "store_terminals", "stores"
  add_foreign_key "store_terminals", "terminals"
  add_foreign_key "stores", "banks"
end
