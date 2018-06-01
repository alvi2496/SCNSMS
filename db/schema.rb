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

ActiveRecord::Schema.define(version: 20180601103635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "student_id"
    t.string "village_house_road"
    t.string "post_office"
    t.string "postal_code"
    t.string "union"
    t.string "district"
    t.string "division"
    t.integer "address_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_addresses_on_student_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "educational_qualifications", force: :cascade do |t|
    t.bigint "student_id"
    t.string "level_of_education"
    t.string "institution"
    t.string "roll"
    t.string "result"
    t.string "year"
    t.string "duration"
    t.string "country_name", default: "Bangladesh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "board"
    t.integer "group"
    t.index ["student_id"], name: "index_educational_qualifications_on_student_id"
  end

  create_table "leaves", force: :cascade do |t|
    t.bigint "student_id"
    t.date "start_date"
    t.date "end_date"
    t.string "reason"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_leaves_on_student_id"
  end

  create_table "results", force: :cascade do |t|
    t.bigint "student_id"
    t.string "full_mark"
    t.string "achieved_mark"
    t.string "referred_subjects"
    t.string "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year"
    t.index ["student_id"], name: "index_results_on_student_id"
  end

  create_table "show_causes", force: :cascade do |t|
    t.bigint "student_id"
    t.date "date"
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_show_causes_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "bnc_student_id"
    t.string "du_student_id"
    t.string "program"
    t.string "institution_name"
    t.string "session"
    t.string "length_of_program"
    t.string "program_completion_length"
    t.date "date_of_program_admission"
    t.date "program_start_date"
    t.date "program_completion_date"
    t.integer "payment_method"
    t.string "name"
    t.string "full_name"
    t.integer "sex"
    t.string "father_name"
    t.string "mother_name"
    t.date "date_of_birth"
    t.integer "blood_group"
    t.string "national_id_number"
    t.string "passport_number"
    t.string "guardian_name"
    t.string "relation_with_guardian"
    t.integer "quota"
    t.string "nationality"
    t.integer "religion"
    t.integer "marital_status"
    t.string "email_address"
    t.string "mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "roll"
  end

end
