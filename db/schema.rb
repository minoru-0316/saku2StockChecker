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

ActiveRecord::Schema.define(version: 2020_03_12_131712) do

  create_table "ages", force: :cascade do |t|
    t.integer "age_code"
    t.string "age_period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "answers", id: :string, force: :cascade do |t|
    t.integer "pref_code"
    t.integer "gender_code"
    t.integer "age_code"
    t.integer "job_code"
    t.integer "housing_code"
    t.string "pref_name"
    t.string "gender_type"
    t.string "age_period"
    t.string "job_name"
    t.string "seismic_response"
    t.string "housing_possession"
    t.string "housing_type"
    t.integer "household_size"
    t.integer "adult_num"
    t.integer "minor_num"
    t.integer "bottolwater_2L"
    t.integer "required_water"
    t.boolean "result_water", default: false, null: false
    t.integer "cooking_stove"
    t.integer "required_stove"
    t.boolean "result_stove", default: false, null: false
    t.integer "cassette_gas"
    t.integer "required_gas"
    t.boolean "result_gas", default: false, null: false
    t.integer "rice_2kg"
    t.integer "required_rice"
    t.boolean "result_rice", default: false, null: false
    t.integer "dried_noodle"
    t.integer "required_noodle"
    t.boolean "result_noodle", default: false, null: false
    t.integer "dried_pasta"
    t.integer "required_pasta"
    t.boolean "result_pasta", default: false, null: false
    t.integer "cupped_noodle"
    t.integer "required_cpnoodle"
    t.boolean "result_cpnoodle", default: false, null: false
    t.integer "packed_rice"
    t.integer "required_pkrice"
    t.boolean "result_pkrice", default: false, null: false
    t.integer "cereal_etc"
    t.integer "required_etc"
    t.boolean "result_etc", default: false, null: false
    t.integer "retort_food1"
    t.integer "required_retort_1"
    t.boolean "result_retort_1", default: false, null: false
    t.integer "retort_food2"
    t.integer "required_retort_2"
    t.boolean "result_retort_2", default: false, null: false
    t.integer "canned_food"
    t.integer "required_canned"
    t.boolean "result_canned", default: false, null: false
    t.text "user_item_1"
    t.integer "user_requied_num_1"
    t.integer "user_result_num_1"
    t.text "user_memo_1"
    t.text "user_item_2"
    t.integer "user_requied_num_2"
    t.integer "user_result_num_2"
    t.text "user_memo_2"
    t.text "user_item_3"
    t.integer "user_requied_num_3"
    t.integer "user_result_num_3"
    t.text "user_memo_3"
    t.text "user_item_4"
    t.integer "user_requied_num_4"
    t.integer "user_result_num_4"
    t.text "user_memo_4"
    t.text "user_item_5"
    t.integer "user_requied_num_5"
    t.integer "user_result_num_5"
    t.text "user_memo_5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genders", force: :cascade do |t|
    t.integer "gender_code"
    t.string "gender_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "job_code"
    t.string "job_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prefs", force: :cascade do |t|
    t.integer "pref_code"
    t.string "pref_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stockplains", force: :cascade do |t|
    t.integer "stock_code"
    t.string "stock_name"
    t.integer "stock_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
