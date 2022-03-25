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

ActiveRecord::Schema.define(version: 2022_03_25_195023) do

  create_table "puzzles", force: :cascade do |t|
    t.string "title"
    t.integer "pieces"
    t.string "manufacturer"
    t.string "style"
    t.string "purchase_link"
    t.integer "price"
    t.string "image"
    t.boolean "owned"
    t.datetime "added_to_collection"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "puzzle_id"
    t.string "purchase_reason"
    t.string "purchase_location"
    t.boolean "poster"
    t.integer "piece_quality"
    t.string "piece_quality_desc"
    t.integer "fit_quality"
    t.string "fit_quality_desc"
    t.integer "finished_quality"
    t.string "finished_quality_desc"
    t.integer "difficulty"
    t.string "difficulty_desc"
    t.boolean "recommend"
    t.string "recommend_desc"
    t.datetime "created_at"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.datetime "join_date"
    t.integer "review_count"
  end

end
