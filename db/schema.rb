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

ActiveRecord::Schema[7.1].define(version: 2025_04_27_083626) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requests", force: :cascade do |t|
    t.string "customer_type"
    t.string "company_name"
    t.string "request_type"
    t.string "declaration"
    t.text "own_payment_method"
    t.string "transfer_amount"
    t.text "goods_category"
    t.string "goods_amount"
    t.text "link"
    t.string "contact_name"
    t.string "contact_phone"
    t.string "contact_email"
    t.string "cdek_contract"
    t.string "cdek_manager_name"
    t.string "cdek_manager_contact"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_method"
  end

end
