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

ActiveRecord::Schema.define(version: 2022_03_15_225654) do

  create_table "credit_cards", force: :cascade do |t|
    t.integer "credit_line"
    t.integer "current_balance"
    t.string "card_name"
    t.float "apr"
    t.integer "user_id"
    t.boolean "permanent_credit_card"
    t.date "payment_date"
    t.integer "minimum_payment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "current_loans", force: :cascade do |t|
    t.integer "total_loan_amount"
    t.string "lender_name"
    t.integer "repayment_period"
    t.float "apr"
    t.integer "user_id"
    t.date "first_payment_date"
    t.date "loan_start_date"
    t.integer "amount_borrowed"
    t.integer "amount_remaining"
    t.date "next_loan_receiving_date"
    t.integer "next_loan_receiving_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "monthly_payments_after_school"
    t.integer "monthly_payments_in_school"
    t.integer "loan_total_cost"
  end

  create_table "loan_comparisons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total_loan_amount"
    t.string "lender_name"
    t.integer "repayment_period"
    t.float "apr"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "monthly_payments_after_school"
    t.integer "monthly_payments_in_school"
    t.integer "loan_total_cost"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.date "graduation_date"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
