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

ActiveRecord::Schema.define(version: 20171115095204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "prefecture"
    t.string "city"
    t.string "house_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas_groups", force: :cascade do |t|
    t.bigint "area_id"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_areas_groups_on_area_id"
    t.index ["shop_id"], name: "index_areas_groups_on_shop_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.integer "price"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_dishes_on_shop_id"
  end

  create_table "dishes_groups", force: :cascade do |t|
    t.bigint "dish_id"
    t.bigint "kind_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_dishes_groups_on_dish_id"
    t.index ["kind_id"], name: "index_dishes_groups_on_kind_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_groups", force: :cascade do |t|
    t.bigint "genre_id"
    t.bigint "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_genres_groups_on_dish_id"
    t.index ["genre_id"], name: "index_genres_groups_on_genre_id"
  end

  create_table "kinds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kinds_groups", force: :cascade do |t|
    t.bigint "kind_id"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kind_id"], name: "index_kinds_groups_on_kind_id"
    t.index ["shop_id"], name: "index_kinds_groups_on_shop_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "order_id"
    t.bigint "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_order_details_on_dish_id"
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.datetime "delivery_date"
    t.string "delivery_address"
    t.bigint "user_id"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_orders_on_shop_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "areas_groups", "areas"
  add_foreign_key "areas_groups", "shops"
  add_foreign_key "dishes", "shops"
  add_foreign_key "dishes_groups", "dishes"
  add_foreign_key "dishes_groups", "kinds"
  add_foreign_key "genres_groups", "dishes"
  add_foreign_key "genres_groups", "genres"
  add_foreign_key "kinds_groups", "kinds"
  add_foreign_key "kinds_groups", "shops"
  add_foreign_key "order_details", "dishes"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "shops"
  add_foreign_key "orders", "users"
end
