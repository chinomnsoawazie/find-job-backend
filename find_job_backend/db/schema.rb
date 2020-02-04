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

ActiveRecord::Schema.define(version: 2019_12_28_044913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certifications", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "description"
    t.string "issued_by"
    t.date "issuing_date"
    t.boolean "renewable"
    t.date "valid_until"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_certifications_on_user_id"
  end

  create_table "educations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name_of_institution"
    t.string "degree_or_certificate"
    t.float "gpa"
    t.date "start_date"
    t.date "end_date"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "major"
    t.string "minor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "employments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "company_name"
    t.string "job_title"
    t.integer "start_month"
    t.integer "start_year"
    t.integer "end_month"
    t.integer "end_year"
    t.string "duties"
    t.string "country"
    t.string "city"
    t.string "state"
    t.boolean "currently_work_here"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_employments_on_user_id"
  end

  create_table "general_jobs", force: :cascade do |t|
    t.string "job_title"
    t.string "company_name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "zipcode"
    t.integer "pay"
    t.string "job_type"
    t.string "intro"
    t.string "requirement"
    t.string "employer_strongpoints"
    t.string "benefits"
    t.string "education"
    t.string "schedule"
    t.string "description"
    t.string "duties"
    t.string "url"
    t.string "industry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "user_id"
    t.string "job_title"
    t.string "company_name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "zipcode"
    t.integer "pay"
    t.string "job_type"
    t.string "intro"
    t.string "requirement"
    t.string "employer_strongpoints"
    t.string "benefits"
    t.string "education"
    t.string "schedule"
    t.string "description"
    t.string "duties"
    t.string "url"
    t.string "industry"
    t.boolean "applied_key"
    t.boolean "favorite_key"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "organization"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_notes_on_job_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "city_population"
    t.string "pay_range"
    t.string "job_title"
    t.string "industry"
    t.date "posting_date_start"
    t.date "posting_date_stop"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "description"
    t.integer "proficiency_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_skills_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.string "description"
    t.date "due_date"
    t.boolean "done_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_tasks_on_job_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "age"
    t.string "highest_education"
    t.string "years_of_experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "certifications", "users"
  add_foreign_key "educations", "users"
  add_foreign_key "employments", "users"
  add_foreign_key "memberships", "users"
  add_foreign_key "notes", "jobs"
  add_foreign_key "preferences", "users"
  add_foreign_key "skills", "users"
  add_foreign_key "tasks", "jobs"
end
