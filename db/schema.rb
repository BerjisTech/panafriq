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

ActiveRecord::Schema[7.0].define(version: 2022_06_28_152044) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "companies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.text "name"
    t.integer "locations"
    t.integer "products"
    t.integer "services"
    t.integer "staff"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "company_locations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "company_id"
    t.integer "products"
    t.integer "services"
    t.text "name"
    t.uuid "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_locations_on_company_id"
    t.index ["user_id"], name: "index_company_locations_on_user_id"
  end

  create_table "customers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.uuid "company_id"
    t.uuid "trucker_id"
    t.uuid "storage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_customers_on_company_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "drivers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.uuid "trucker_id"
    t.datetime "invited_on"
    t.datetime "joined_on"
    t.boolean "is_active"
    t.datetime "left_on"
    t.text "reason_for_leaving"
    t.uuid "staff_designation"
    t.uuid "invited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invited_by"], name: "index_drivers_on_invited_by"
    t.index ["staff_designation"], name: "index_drivers_on_staff_designation"
    t.index ["trucker_id"], name: "index_drivers_on_trucker_id"
    t.index ["user_id"], name: "index_drivers_on_user_id"
  end

  create_table "product_categories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_variants", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "product_id"
    t.text "name"
    t.float "price"
    t.uuid "company_id"
    t.text "description"
    t.uuid "category"
    t.json "offered_locations"
    t.integer "quantity"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_product_variants_on_category"
    t.index ["company_id"], name: "index_product_variants_on_company_id"
    t.index ["product_id"], name: "index_product_variants_on_product_id"
  end

  create_table "products", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.float "price"
    t.uuid "company_id"
    t.text "description"
    t.uuid "category"
    t.json "offered_locations"
    t.integer "quantity"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_products_on_category"
    t.index ["company_id"], name: "index_products_on_company_id"
  end

  create_table "sales", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "company_id"
    t.boolean "is_product"
    t.boolean "is_service"
    t.json "products"
    t.json "services"
    t.float "amount"
    t.integer "status"
    t.uuid "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_sales_on_company_id"
    t.index ["customer_id"], name: "index_sales_on_customer_id"
  end

  create_table "service_categories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_variants", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "service_id"
    t.text "name"
    t.float "price"
    t.uuid "company_id"
    t.text "description"
    t.uuid "category"
    t.json "offered_locations"
    t.integer "quantity"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_service_variants_on_category"
    t.index ["company_id"], name: "index_service_variants_on_company_id"
    t.index ["service_id"], name: "index_service_variants_on_service_id"
  end

  create_table "services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.float "price"
    t.uuid "company_id"
    t.text "description"
    t.uuid "category"
    t.json "offered_locations"
    t.integer "quantity"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_services_on_category"
    t.index ["company_id"], name: "index_services_on_company_id"
  end

  create_table "staff_designations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.uuid "company_id"
    t.datetime "invited_on"
    t.datetime "joined_on"
    t.boolean "is_active"
    t.datetime "left_on"
    t.text "reason_for_leaving"
    t.uuid "staff_designation"
    t.uuid "invited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "locations"
    t.index ["company_id"], name: "index_staffs_on_company_id"
    t.index ["invited_by"], name: "index_staffs_on_invited_by"
    t.index ["staff_designation"], name: "index_staffs_on_staff_designation"
    t.index ["user_id"], name: "index_staffs_on_user_id"
  end

  create_table "storage_locations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "storage_id"
    t.integer "products"
    t.integer "services"
    t.text "name"
    t.uuid "user_id"
    t.integer "storage_size"
    t.uuid "storage_type"
    t.float "storage_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storage_id"], name: "index_storage_locations_on_storage_id"
    t.index ["storage_type"], name: "index_storage_locations_on_storage_type"
    t.index ["user_id"], name: "index_storage_locations_on_user_id"
  end

  create_table "storage_staffs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.uuid "storage_id"
    t.datetime "invited_on"
    t.datetime "joined_on"
    t.boolean "is_active"
    t.datetime "left_on"
    t.text "reason_for_leaving"
    t.uuid "staff_designation"
    t.uuid "invited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "locations"
    t.index ["invited_by"], name: "index_storage_staffs_on_invited_by"
    t.index ["staff_designation"], name: "index_storage_staffs_on_staff_designation"
    t.index ["storage_id"], name: "index_storage_staffs_on_storage_id"
    t.index ["user_id"], name: "index_storage_staffs_on_user_id"
  end

  create_table "storage_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.integer "locations"
    t.integer "storage_staff"
    t.uuid "storage_type"
    t.float "storage_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storage_type"], name: "index_storages_on_storage_type"
    t.index ["user_id"], name: "index_storages_on_user_id"
  end

  create_table "trip_fines", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "trip_id"
    t.text "fine"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_trip_fines_on_trip_id"
  end

  create_table "trips", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "truck_id"
    t.uuid "driver_id"
    t.text "departure"
    t.text "destination"
    t.datetime "trip_date"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.string "goods_status"
    t.float "customer_pay"
    t.float "fine"
    t.float "final_truck_pay"
    t.float "trucker_pay"
    t.float "driver_cut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departure"], name: "index_trips_on_departure"
    t.index ["destination"], name: "index_trips_on_destination"
    t.index ["driver_id"], name: "index_trips_on_driver_id"
    t.index ["truck_id"], name: "index_trips_on_truck_id"
  end

  create_table "truck_staffs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.uuid "trucker_id"
    t.datetime "invited_on"
    t.datetime "joined_on"
    t.boolean "is_active"
    t.datetime "left_on"
    t.text "reason_for_leaving"
    t.uuid "staff_designation"
    t.uuid "invited_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invited_by"], name: "index_truck_staffs_on_invited_by"
    t.index ["staff_designation"], name: "index_truck_staffs_on_staff_designation"
    t.index ["trucker_id"], name: "index_truck_staffs_on_trucker_id"
    t.index ["user_id"], name: "index_truck_staffs_on_user_id"
  end

  create_table "truck_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "truckers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.boolean "is_company"
    t.string "country"
    t.integer "truck_staff"
    t.integer "drivers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country"], name: "index_truckers_on_country"
    t.index ["is_company"], name: "index_truckers_on_is_company"
    t.index ["user_id"], name: "index_truckers_on_user_id"
  end

  create_table "trucks", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "trucker_id"
    t.uuid "truck_type"
    t.float "truck_size"
    t.float "truck_age"
    t.integer "trips"
    t.string "number_plate"
    t.string "registration_country"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number_plate"], name: "index_trucks_on_number_plate", unique: true
    t.index ["registration_country"], name: "index_trucks_on_registration_country"
    t.index ["trips"], name: "index_trucks_on_trips"
    t.index ["truck_age"], name: "index_trucks_on_truck_age"
    t.index ["truck_size"], name: "index_trucks_on_truck_size"
    t.index ["truck_type"], name: "index_trucks_on_truck_type"
    t.index ["trucker_id"], name: "index_trucks_on_trucker_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 5, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
