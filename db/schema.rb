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

ActiveRecord::Schema.define(version: 2023_03_07_093712) do

  create_table "customerdetails", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "nickname"
    t.string "gender"
    t.string "post_code"
    t.string "profession"
    t.string "address"
    t.string "annual_income"
    t.string "repeat"
    t.string "marriage"
    t.string "children"
    t.string "visits"
    t.string "unit_price"
    t.string "phone_number"
    t.string "email"
    t.date "birthday"
    t.string "visit_frequency"
    t.string "month_sales_target"
    t.string "gole_sales_target"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
