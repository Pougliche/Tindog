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

ActiveRecord::Schema.define(version: 2019_10_24_162615) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dog_sitters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_dog_sitters_on_city_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "dog_name"
    t.string "breed_name"
    t.string "gender"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "stroll_time"
    t.integer "dog_id"
    t.integer "dog_sitter_id"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_strolls_on_city_id"
    t.index ["dog_id"], name: "index_strolls_on_dog_id"
    t.index ["dog_sitter_id"], name: "index_strolls_on_dog_sitter_id"
  end

end
