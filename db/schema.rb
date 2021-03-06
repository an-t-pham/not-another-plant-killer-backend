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

ActiveRecord::Schema.define(version: 2021_04_26_093332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "collection_plants", force: :cascade do |t|
    t.uuid "collection_id", null: false
    t.uuid "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_id"], name: "index_collection_plants_on_collection_id"
    t.index ["plant_id"], name: "index_collection_plants_on_plant_id"
  end

  create_table "collections", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.uuid "user_id", null: false
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
    t.uuid "plant_id", null: false
    t.bigint "light_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["light_id"], name: "index_plant_lights_on_light_id"
    t.index ["plant_id"], name: "index_plant_lights_on_plant_id"
  end

  create_table "plant_waters", force: :cascade do |t|
    t.uuid "plant_id", null: false
    t.bigint "water_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_plant_waters_on_plant_id"
    t.index ["water_id"], name: "index_plant_waters_on_water_id"
  end

  create_table "plants", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "aka"
    t.string "description"
    t.integer "size_pot"
    t.boolean "pet_friendly"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "email"
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
end
