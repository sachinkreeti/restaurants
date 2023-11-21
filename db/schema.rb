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

ActiveRecord::Schema[7.0].define(version: 2023_11_21_211827) do
  create_table "employees", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.string "name"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.string "name"
    t.datetime "date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_events_on_restaurant_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "name"
    t.float "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_ingredients_on_restaurant_id"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.string "dish_name"
    t.decimal "price"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.datetime "order_date"
    t.decimal "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "order_id", null: false
    t.datetime "payment_date"
    t.decimal "amount"
    t.string "payment_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "discount_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_promotions_on_restaurant_id"
  end

  create_table "reservation_guests", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.string "guest_name"
    t.string "contact_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reservation_id"], name: "index_reservation_guests_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.datetime "reservation_date"
    t.integer "party_size"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_reservations_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "cuisine"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uuid"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.text "content"
    t.integer "rating"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "name"
    t.string "contact_person"
    t.string "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_suppliers_on_restaurant_id"
  end

  add_foreign_key "employees", "restaurants"
  add_foreign_key "events", "restaurants"
  add_foreign_key "ingredients", "restaurants"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "payments", "orders"
  add_foreign_key "promotions", "restaurants"
  add_foreign_key "reservation_guests", "reservations"
  add_foreign_key "reservations", "restaurants"
  add_foreign_key "reviews", "restaurants"
  add_foreign_key "suppliers", "restaurants"
end
