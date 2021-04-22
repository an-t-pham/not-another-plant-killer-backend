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

ActiveRecord::Schema.define(version: 2021_04_22_080407) do

  create_table "collection_plants", force: :cascade do |t|
    t.integer "collection_id", null: false
    t.integer "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_id"], name: "index_collection_plants_on_collection_id"
    t.index ["plant_id"], name: "index_collection_plants_on_plant_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "lights", force: :cascade do |t|
    t.integer "level"
    t.string "description"
    t.string "ideal_location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plant_lights", force: :cascade do |t|
    t.integer "plant_id", null: false
    t.integer "light_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["light_id"], name: "index_plant_lights_on_light_id"
    t.index ["plant_id"], name: "index_plant_lights_on_plant_id"
  end

  create_table "plant_waters", force: :cascade do |t|
    t.integer "plant_id", null: false
    t.integer "water_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_plant_waters_on_plant_id"
    t.index ["water_id"], name: "index_plant_waters_on_water_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "aka"
    t.string "description"
    t.integer "size_pot"
    t.boolean "pet_friendly"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_plants", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_user_plants_on_plant_id"
    t.index ["user_id"], name: "index_user_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "waters", force: :cascade do |t|
    t.integer "level"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "collection_plants", "collections"
  add_foreign_key "collection_plants", "plants"
  add_foreign_key "collections", "users"
  add_foreign_key "plant_lights", "lights"
  add_foreign_key "plant_lights", "plants"
  add_foreign_key "plant_waters", "plants"
  add_foreign_key "plant_waters", "waters"
  add_foreign_key "user_plants", "plants"
  add_foreign_key "user_plants", "users"
end
