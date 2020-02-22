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

ActiveRecord::Schema.define(version: 2020_01_04_235236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.jsonb "abilities", array: true
    t.integer "base_experience"
    t.jsonb "forms", array: true
    t.jsonb "game_indices", array: true
    t.integer "height"
    t.jsonb "held_items", array: true
    t.integer "pokemon_id"
    t.boolean "is_default"
    t.string "location_area_encounters"
    t.jsonb "moves", array: true
    t.string "name"
    t.integer "order"
    t.jsonb "species"
    t.jsonb "sprites"
    t.jsonb "stats", array: true
    t.jsonb "types", array: true
    t.integer "weight"
    t.string "flavor_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
