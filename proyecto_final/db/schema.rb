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

ActiveRecord::Schema[7.0].define(version: 2022_11_21_185325) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "current_program_states", force: :cascade do |t|
    t.integer "screen"
    t.integer "velocity_mode"
    t.float "current_velocity"
    t.float "current_distance"
    t.float "partial_distance"
    t.boolean "cruise_mode_on"
    t.float "cruising_speed"
    t.float "perimeter"
    t.float "max_velocity"
    t.float "curve_amplitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "screen"
    t.integer "velocity_mode"
    t.float "current_velocity"
    t.float "current_distance"
    t.float "partial_distance"
    t.boolean "cruise_mode_on"
    t.float "cruising_spped"
    t.float "perimeter"
    t.float "max_velocity"
    t.float "curve_amplitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
