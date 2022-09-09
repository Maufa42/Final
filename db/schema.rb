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

ActiveRecord::Schema.define(version: 2022_09_09_121706) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "vendor_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "event_date"
    t.string "place"
    t.integer "category_id", null: false
    t.integer "subcategory_id", null: false
    t.boolean "status", default: false
    t.index ["category_id"], name: "index_bookings_on_category_id"
    t.index ["event_id"], name: "index_bookings_on_event_id"
    t.index ["subcategory_id"], name: "index_bookings_on_subcategory_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
    t.index ["vendor_id"], name: "index_bookings_on_vendor_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
  end

  create_table "categorysubcategories", force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "subcategory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_categorysubcategories_on_category_id"
    t.index ["subcategory_id"], name: "index_categorysubcategories_on_subcategory_id"
  end

  create_table "checkouts", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.string "stripe_payment_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.integer "subcategory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subcategory_id"], name: "index_children_on_subcategory_id"
  end

  create_table "event_vendors", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "vendor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_vendors_on_event_id"
    t.index ["vendor_id"], name: "index_event_vendors_on_vendor_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.date "date"
    t.integer "budget"
    t.integer "guest"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id"
    t.integer "price"
    t.string "stripe_product_id"
    t.string "stripe_price_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role", default: 0
    t.boolean "admin_approval", default: false
    t.string "fname"
    t.string "lname"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "type"
    t.string "provider"
    t.string "uid"
    t.string "stripe_customer_id"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.text "description"
    t.text "address"
    t.integer "phone"
    t.string "nearest_landmark"
    t.string "website"
    t.string "established_in"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  add_foreign_key "bookings", "categories"
  add_foreign_key "bookings", "events"
  add_foreign_key "bookings", "subcategories"
  add_foreign_key "bookings", "users"
  add_foreign_key "bookings", "vendors"
  add_foreign_key "categorysubcategories", "categories"
  add_foreign_key "categorysubcategories", "subcategories"
  add_foreign_key "children", "subcategories"
  add_foreign_key "event_vendors", "events"
  add_foreign_key "event_vendors", "vendors"
end
