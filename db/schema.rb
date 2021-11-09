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

ActiveRecord::Schema.define(version: 2021_11_09_025538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boats", force: :cascade do |t|
    t.string "type"
    t.string "size"
    t.integer "capasity"
    t.string "activity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contact_lists", force: :cascade do |t|
    t.integer "phone_number"
    t.string "email"
    t.string "social"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.text "experience_description"
    t.string "boat_type"
    t.string "interested_in"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.boolean "owner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.bigint "contact_list_id"
    t.bigint "review_profile_id"
    t.bigint "experience_id"
    t.bigint "boat_id", null: false
    t.index ["boat_id"], name: "index_profiles_on_boat_id"
    t.index ["contact_list_id"], name: "index_profiles_on_contact_list_id"
    t.index ["experience_id"], name: "index_profiles_on_experience_id"
    t.index ["review_profile_id"], name: "index_profiles_on_review_profile_id"
  end

  create_table "review_profiles", force: :cascade do |t|
    t.integer "totalled_rating"
    t.integer "rating_out_of_five", limit: 2
    t.text "description"
    t.integer "number_of_voyages"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "profiles", "boats"
  add_foreign_key "profiles", "contact_lists"
  add_foreign_key "profiles", "experiences"
  add_foreign_key "profiles", "review_profiles"
end
