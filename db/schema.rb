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

ActiveRecord::Schema.define(version: 20151027123000) do

  create_table "active_admin_comments", force: true do |t|
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

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "categories", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "procedure_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["procedure_id"], name: "index_categories_on_procedure_id"

  create_table "clinics", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.text     "services"
    t.text     "address_line_1"
    t.text     "address_line_2"
    t.string   "city"
    t.string   "country"
    t.string   "phone_country_code"
    t.string   "zipcode"
    t.string   "ratings"
    t.string   "coordinator"
    t.string   "accreditations_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photos_file_name"
    t.string   "photos_content_type"
    t.integer  "photos_file_size"
    t.datetime "photos_updated_at"
  end

  create_table "procedures", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "clinic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "procedures", ["clinic_id"], name: "index_procedures_on_clinic_id"

  create_table "reviews", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "clinic_id"
    t.string   "ratings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["clinic_id"], name: "index_reviews_on_clinic_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "speciality"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staffs", ["user_id"], name: "index_staffs_on_user_id"

  create_table "subcategories", force: true do |t|
    t.integer  "procedure_id"
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"
  add_index "subcategories", ["procedure_id"], name: "index_subcategories_on_procedure_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "clinic_id"
  end

  add_index "users", ["clinic_id"], name: "index_users_on_clinic_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
