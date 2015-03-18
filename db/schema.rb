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

ActiveRecord::Schema.define(version: 20150318100011) do

  create_table "backlog_items", force: :cascade do |t|
    t.string   "subject"
    t.text     "content"
    t.integer  "priority"
    t.integer  "status"
    t.integer  "sequence"
    t.integer  "sprint_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "created_by_id"
  end

  add_index "backlog_items", ["created_by_id"], name: "index_backlog_items_on_created_by_id"
  add_index "backlog_items", ["sprint_id"], name: "index_backlog_items_on_sprint_id"

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
  end

  add_index "members", ["project_id"], name: "index_members_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_owner_id"
    t.integer  "scrum_master_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "projects", ["product_owner_id"], name: "index_projects_on_product_owner_id"
  add_index "projects", ["scrum_master_id"], name: "index_projects_on_scrum_master_id"

  create_table "sprints", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sprints", ["project_id"], name: "index_sprints_on_project_id"

  create_table "tasks", force: :cascade do |t|
    t.integer  "backlog_item_id"
    t.integer  "assigned_to_id"
    t.string   "subject"
    t.integer  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "tasks", ["assigned_to_id"], name: "index_tasks_on_assigned_to_id"
  add_index "tasks", ["backlog_item_id"], name: "index_tasks_on_backlog_item_id"

end
