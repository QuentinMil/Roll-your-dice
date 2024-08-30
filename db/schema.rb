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

ActiveRecord::Schema[7.1].define(version: 2024_08_30_165745) do
  create_table "dices", force: :cascade do |t|
    t.integer "number_of_face"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rolls", force: :cascade do |t|
    t.integer "dice_id", null: false
    t.integer "dice_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dice_id"], name: "index_rolls_on_dice_id"
  end

  create_table "user_rolls", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "roll_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roll_id"], name: "index_user_rolls_on_roll_id"
    t.index ["user_id"], name: "index_user_rolls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rolls", "dices"
  add_foreign_key "user_rolls", "rolls"
  add_foreign_key "user_rolls", "users"
end
