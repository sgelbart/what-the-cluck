# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180225212153) do

  create_table "breeds", force: :cascade do |t|
    t.string   "name"
    t.text     "decsription"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "chickens", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "hatch_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "chickens", ["hatch_id"], name: "index_chickens_on_hatch_id"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.integer  "text_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"
  add_index "comments", ["text_id"], name: "index_comments_on_text_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "conditions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hatch_chicks", force: :cascade do |t|
    t.integer  "hatch_id"
    t.integer  "breed_id"
    t.integer  "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hatch_chicks", ["breed_id"], name: "index_hatch_chicks_on_breed_id"
  add_index "hatch_chicks", ["hatch_id"], name: "index_hatch_chicks_on_hatch_id"

  create_table "hatcheries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hatches", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "hatched_at"
    t.integer  "chicken_amount"
    t.integer  "hatchery_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "hatches", ["hatchery_id"], name: "index_hatches_on_hatchery_id"

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "images", ["imageable_id"], name: "index_images_on_imageable_id"

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "postable_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "posts", ["postable_id"], name: "index_posts_on_postable_id"

  create_table "predators", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
