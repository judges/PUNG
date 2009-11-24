# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091123112527) do

  create_table "addssyzes", :force => true do |t|
    t.string   "addsssize"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addstypes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mediaplans", :force => true do |t|
    t.string   "rianame"
    t.string   "riacontactpersone"
    t.string   "riaphone"
    t.string   "riamobile"
    t.string   "riaemail"
    t.text     "mediaplanauthidory"
    t.integer  "mediaplanexits"
    t.date     "mediaplanmonth"
    t.integer  "mediaplaaddstypeid"
    t.text     "mediaplasize"
    t.string   "mediaplanaditionalinfo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newspappers", :force => true do |t|
    t.integer  "regionid"
    t.string   "newspappername"
    t.string   "newspappertype"
    t.string   "newspasserperiod"
    t.integer  "newsspapperpages"
    t.string   "newspapperprinttype"
    t.text     "newsspapperdescription"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pwspapperadds", :force => true do |t|
    t.integer  "newspappertid"
    t.integer  "tyepeid"
    t.integer  "sizeid"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
