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

ActiveRecord::Schema.define(version: 20151223071551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.integer  "contact_no"
    t.string   "token"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dataviews", force: :cascade do |t|
    t.string   "cook"
    t.integer  "customer_id"
    t.string   "customer_name"
    t.text     "address"
    t.datetime "starttime"
    t.datetime "endtime"
    t.datetime "totaltime"
    t.integer  "money"
    t.string   "paidbycustomer"
    t.string   "paidbycook"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "doj"
    t.integer  "spid"
    t.string   "typere"
  end

  create_table "negative_feedbacks", force: :cascade do |t|
    t.date     "date"
    t.string   "cook"
    t.string   "customer"
    t.text     "feedback"
    t.text     "remark"
    t.integer  "spid"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sproviders", force: :cascade do |t|
    t.string   "uname"
    t.datetime "doj"
    t.integer  "contact_no"
    t.string   "status"
    t.integer  "payment"
    t.integer  "credit"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
