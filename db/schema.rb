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

ActiveRecord::Schema.define(version: 20170303092312) do

  create_table "components", force: :cascade do |t|
    t.bigint "organization_id"
    t.string "status"
    t.string "url"
    t.integer "error_count"
    t.datetime "executed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monitoring_logs", force: :cascade do |t|
    t.bigint "component_id"
    t.integer "status_code"
    t.string "status"
    t.float "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["component_id"], name: "index_monitoring_logs_on_component_id"
  end

end
