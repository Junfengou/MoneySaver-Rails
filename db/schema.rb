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

ActiveRecord::Schema.define(version: 2022_01_11_044423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_budgets_on_user_id"
  end

  create_table "debts", force: :cascade do |t|
    t.integer "creditcard"
    t.integer "car"
    t.integer "studentloan"
    t.integer "medical"
    t.integer "personal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "budget_id"
    t.index ["budget_id"], name: "index_debts_on_budget_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.integer "mortgage"
    t.integer "water"
    t.integer "gas"
    t.integer "eletricity"
    t.integer "cable"
    t.integer "trash"
    t.integer "gasoline"
    t.integer "maintenance"
    t.integer "groceries"
    t.integer "restaurant"
    t.integer "clothing"
    t.integer "phone"
    t.integer "fun"
    t.integer "cosmetic"
    t.integer "subscription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "budget_id"
    t.index ["budget_id"], name: "index_expenses_on_budget_id"
  end

  create_table "givings", force: :cascade do |t|
    t.integer "church"
    t.integer "charity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "budget_id"
    t.index ["budget_id"], name: "index_givings_on_budget_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.integer "checkone"
    t.integer "checktwo"
    t.integer "checkthree"
    t.integer "checkfour"
    t.integer "checkfive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "budget_id"
    t.index ["budget_id"], name: "index_incomes_on_budget_id"
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

end
