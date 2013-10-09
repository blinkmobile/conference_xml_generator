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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120601023653) do

  create_table "abstracts", :force => true do |t|
    t.string   "title"
    t.integer  "speaker_id"
    t.text     "text",          :limit => 255
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "",     :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level",                                 :default => "User"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "conferences", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "domain",      :default => "blinkev.co"
    t.string   "answerspace"
    t.string   "username"
    t.string   "password"
  end

  create_table "days", :force => true do |t|
    t.string   "displayName"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sponsor_id"
  end

  create_table "downloads", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "group"
    t.string   "subgroup"
    t.string   "icon"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groupmaps", :force => true do |t|
    t.integer  "group_id"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "title"
    t.integer  "day_id"
    t.string   "starttime"
    t.boolean  "visible"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subtitle"
    t.string   "endtime"
    t.string   "imageurl"
  end

  create_table "groups_groups", :id => false, :force => true do |t|
    t.integer  "group_id"
    t.integer  "subgroup_id"
    t.integer  "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paragraphs", :force => true do |t|
    t.string "text"
  end

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.text     "description",   :limit => 255
    t.string   "imageurl"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "title"
    t.integer  "day_id"
    t.string   "starttime"
    t.string   "endtime"
    t.integer  "speaker_id"
    t.integer  "abstract_id"
    t.integer  "room_id"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "rate"
    t.boolean  "livezone"
    t.text     "subtitle",      :limit => 255
    t.string   "imageurl"
    t.integer  "order"
    t.boolean  "keynote"
    t.boolean  "break"
    t.text     "description"
    t.boolean  "twitter"
    t.boolean  "facebook"
  end

  create_table "sessions_speakers", :id => false, :force => true do |t|
    t.integer  "session_id"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions_sponsors", :id => false, :force => true do |t|
    t.integer "session_id"
    t.integer "sponsor_id"
  end

  create_table "speakers", :force => true do |t|
    t.string   "name"
    t.text     "bio",           :limit => 255
    t.string   "imageurl"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "company"
    t.string   "location"
    t.string   "level"
  end

  create_table "speakers_abstracts", :id => false, :force => true do |t|
    t.integer  "abstract_id"
    t.integer  "speaker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "logourl"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level"
    t.text     "information",    :limit => 255
    t.string   "url"
    t.string   "booth"
    t.string   "secondImage"
    t.string   "contactName"
    t.string   "contactNumber"
    t.string   "contactEmail"
    t.string   "contactAddress"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "facebook"
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
