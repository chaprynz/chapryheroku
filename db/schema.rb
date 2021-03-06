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

ActiveRecord::Schema.define(version: 20160620101705) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.text     "video"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "homelogo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "tag"
    t.boolean  "vocabulary"
    t.boolean  "grammar"
    t.boolean  "a"
    t.boolean  "b"
    t.boolean  "c"
    t.boolean  "d"
    t.boolean  "e"
    t.boolean  "f"
    t.boolean  "g"
    t.boolean  "h"
    t.boolean  "i"
    t.boolean  "j"
    t.boolean  "k"
    t.boolean  "l"
    t.boolean  "m"
    t.boolean  "n"
    t.boolean  "o"
    t.boolean  "p"
    t.boolean  "q"
    t.boolean  "r"
    t.string   "shortname"
    t.text     "shortdescription"
    t.string   "slug"
    t.boolean  "videoa"
    t.boolean  "videob"
    t.boolean  "videoc"
    t.boolean  "videod"
    t.boolean  "videoe"
    t.boolean  "videof"
    t.boolean  "videog"
    t.boolean  "videoh"
    t.boolean  "video"
    t.boolean  "news"
    t.boolean  "quiz"
    t.boolean  "music"
    t.boolean  "newsa"
    t.boolean  "newsb"
    t.boolean  "newsc"
    t.boolean  "newsd"
    t.boolean  "newse"
    t.boolean  "newsf"
    t.boolean  "newsg"
    t.boolean  "newsh"
    t.boolean  "vocabularya"
    t.boolean  "vocabularyb"
    t.boolean  "vocabularyc"
    t.boolean  "vocabularyd"
    t.boolean  "vocabularye"
    t.boolean  "vocabularyf"
    t.boolean  "vocabularyg"
    t.boolean  "vocabularyh"
    t.boolean  "quiza"
    t.boolean  "quizb"
    t.boolean  "quizc"
    t.boolean  "quizd"
    t.boolean  "quize"
    t.boolean  "quizf"
    t.boolean  "quizg"
    t.boolean  "quizh"
    t.boolean  "musica"
    t.boolean  "musicb"
    t.boolean  "musicd"
    t.boolean  "musicc"
    t.boolean  "musice"
    t.boolean  "musicf"
    t.boolean  "musicg"
    t.boolean  "musich"
    t.boolean  "grammara"
    t.boolean  "grammarb"
    t.boolean  "grammarc"
    t.boolean  "grammard"
    t.boolean  "grammare"
    t.boolean  "grammarf"
    t.boolean  "grammarg"
    t.boolean  "grammarh"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "content"
    t.text     "video"
    t.integer  "subcategory_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "shortdescription"
    t.integer  "tag"
    t.string   "slug"
    t.boolean  "hide"
    t.text     "topic"
    t.text     "code"
    t.string   "socialshare_file_name"
    t.string   "socialshare_content_type"
    t.integer  "socialshare_file_size"
    t.datetime "socialshare_updated_at"
    t.boolean  "hidepage"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true
  add_index "posts", ["subcategory_id"], name: "index_posts_on_subcategory_id"

  create_table "subcategories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "a"
    t.boolean  "b"
    t.boolean  "c"
    t.boolean  "d"
    t.boolean  "e"
    t.boolean  "f"
    t.boolean  "g"
    t.boolean  "h"
    t.boolean  "i"
    t.boolean  "j"
    t.boolean  "k"
    t.boolean  "l"
    t.boolean  "m"
    t.boolean  "n"
    t.boolean  "o"
    t.boolean  "p"
    t.boolean  "q"
    t.boolean  "r"
    t.text     "shortdescription"
    t.boolean  "area1"
    t.boolean  "area2"
    t.boolean  "area3"
    t.boolean  "area4"
    t.boolean  "area5"
    t.boolean  "area6"
    t.boolean  "area1header"
    t.boolean  "area2header"
    t.boolean  "area3header"
    t.boolean  "area4header"
    t.boolean  "area5header"
    t.boolean  "area6header"
    t.boolean  "area7header"
    t.string   "slug"
    t.integer  "tag"
    t.boolean  "video"
    t.boolean  "news"
    t.boolean  "vocabulary"
    t.boolean  "quiz"
    t.boolean  "music"
    t.boolean  "grammar"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"
  add_index "subcategories", ["slug"], name: "index_subcategories_on_slug", unique: true

  create_table "tintucs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.text     "description"
    t.text     "video"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "shortdescription"
    t.boolean  "a"
    t.boolean  "b"
    t.boolean  "c"
    t.boolean  "d"
    t.boolean  "e"
    t.boolean  "f"
    t.boolean  "g"
    t.boolean  "h"
    t.boolean  "i"
    t.boolean  "j"
    t.boolean  "k"
    t.boolean  "l"
    t.boolean  "m"
    t.boolean  "n"
    t.boolean  "o"
    t.boolean  "p"
    t.boolean  "q"
    t.boolean  "r"
    t.string   "slug"
    t.integer  "tag"
    t.boolean  "hide"
    t.text     "topic"
    t.boolean  "ipada"
    t.integer  "category_id"
    t.boolean  "videoa"
    t.boolean  "videob"
    t.boolean  "videoc"
    t.boolean  "videod"
    t.boolean  "videoe"
    t.boolean  "videof"
    t.boolean  "videog"
    t.boolean  "videoh"
    t.boolean  "newsa"
    t.boolean  "newsb"
    t.boolean  "newsc"
    t.boolean  "newsd"
    t.boolean  "newse"
    t.boolean  "newsf"
    t.boolean  "newsg"
    t.boolean  "newsh"
    t.boolean  "vocabularya"
    t.boolean  "vocabularyb"
    t.boolean  "vocabularyc"
    t.boolean  "vocabularyd"
    t.boolean  "vocabularye"
    t.boolean  "vocabularyf"
    t.boolean  "vocabularyg"
    t.boolean  "vocabularyh"
    t.boolean  "quiza"
    t.boolean  "quizb"
    t.boolean  "quizc"
    t.boolean  "quizd"
    t.boolean  "quize"
    t.boolean  "quizf"
    t.boolean  "quizg"
    t.boolean  "quizh"
    t.boolean  "musica"
    t.boolean  "musicb"
    t.boolean  "musicc"
    t.boolean  "musicd"
    t.boolean  "musice"
    t.boolean  "musicf"
    t.boolean  "musicg"
    t.boolean  "musich"
    t.boolean  "grammara"
    t.boolean  "grammarb"
    t.boolean  "grammarc"
    t.boolean  "grammard"
    t.boolean  "grammare"
    t.boolean  "grammarf"
    t.boolean  "grammarg"
    t.boolean  "grammarh"
    t.boolean  "ipadhome"
    t.boolean  "ipadvideo"
    t.boolean  "ipadnews"
    t.boolean  "ipadvoc"
    t.boolean  "ipadquiz"
    t.boolean  "ipadmusic"
    t.boolean  "ipadgrammar"
    t.text     "code"
    t.string   "socialshare_file_name"
    t.string   "socialshare_content_type"
    t.integer  "socialshare_file_size"
    t.datetime "socialshare_updated_at"
    t.boolean  "hidepage"
  end

  add_index "tintucs", ["category_id"], name: "index_tintucs_on_category_id"
  add_index "tintucs", ["slug"], name: "index_tintucs_on_slug", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
