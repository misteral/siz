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

ActiveRecord::Schema.define(:version => 20120306054427) do

  create_table "dolgnosts", :force => true do |t|
    t.string   "name"
    t.integer  "prior"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "otdels", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "postavshiks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rabotniks", :force => true do |t|
    t.string   "imy"
    t.string   "otch"
    t.string   "fam"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "otdel_id"
    t.integer  "dolgnost_id"
    t.integer  "razmer_id"
    t.string   "razmer"
    t.string   "rost"
    t.string   "razmer_o"
    t.string   "razmer_g"
    t.string   "tn"
  end

  create_table "sizs", :force => true do |t|
    t.string   "name"
    t.integer  "tip_so_id"
    t.integer  "vid_so_id"
    t.string   "sert"
    t.string   "nom"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sizs", ["tip_so_id"], :name => "index_sizs_on_tip_so_id"
  add_index "sizs", ["vid_so_id"], :name => "index_sizs_on_vid_so_id"

  create_table "sklads", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "tip_sos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vid_sos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
