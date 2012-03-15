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

ActiveRecord::Schema.define(:version => 20120315102304) do

  create_table "doc_tables", :force => true do |t|
    t.integer  "siz_id"
    t.integer  "doc_id"
    t.decimal  "kol"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "razmer_id"
  end

  add_index "doc_tables", ["doc_id"], :name => "index_doc_tables_on_doc_id"
  add_index "doc_tables", ["razmer_id"], :name => "index_doc_tables_on_razmer_id"
  add_index "doc_tables", ["siz_id"], :name => "index_doc_tables_on_siz_id"

  create_table "docs", :force => true do |t|
    t.string   "name"
    t.boolean  "utv"
    t.integer  "sklad_id"
    t.integer  "postavshik_id"
    t.integer  "rabotnik_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "tip_doc_id"
  end

  add_index "docs", ["postavshik_id"], :name => "index_docs_on_postavshik_id"
  add_index "docs", ["rabotnik_id"], :name => "index_docs_on_rabotnik_id"
  add_index "docs", ["sklad_id"], :name => "index_docs_on_sklad_id"
  add_index "docs", ["tip_doc_id"], :name => "index_docs_on_tip_doc_id"

  create_table "dolgnosts", :force => true do |t|
    t.string   "name"
    t.integer  "prior"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ostatoks", :force => true do |t|
    t.decimal  "kol"
    t.integer  "sklads_id"
    t.integer  "sizs_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ostatoks", ["sizs_id"], :name => "index_ostatoks_on_sizs_id"
  add_index "ostatoks", ["sklads_id"], :name => "index_ostatoks_on_sklads_id"

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
    t.string   "tn"
  end

  create_table "razmers", :force => true do |t|
    t.string   "name"
    t.string   "rost"
    t.string   "razm"
    t.string   "razm_g"
    t.string   "rost_o"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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

  create_table "tip_docs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tip_sos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usr_histories", :force => true do |t|
    t.integer  "docs_id"
    t.integer  "sizs_id"
    t.decimal  "kol"
    t.boolean  "napr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "usr_histories", ["docs_id"], :name => "index_usr_histories_on_docs_id"
  add_index "usr_histories", ["sizs_id"], :name => "index_usr_histories_on_sizs_id"

  create_table "vid_sos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
