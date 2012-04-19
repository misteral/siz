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

ActiveRecord::Schema.define(:version => 20120419041626) do

  create_table "doc_tables", :force => true do |t|
    t.integer  "siz_id"
    t.integer  "doc_id"
    t.decimal  "kol"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "razmer_od_id"
    t.integer  "razmer_go_id"
    t.integer  "razmer_o_id"
    t.integer  "rost_id"
    t.integer  "ed_id"
  end

  add_index "doc_tables", ["doc_id"], :name => "index_doc_tables_on_doc_id"
  add_index "doc_tables", ["ed_id"], :name => "index_doc_tables_on_ed_id"
  add_index "doc_tables", ["razmer_go_id"], :name => "index_doc_tables_on_razmer_go_id"
  add_index "doc_tables", ["razmer_o_id"], :name => "index_doc_tables_on_razmer_o_id"
  add_index "doc_tables", ["razmer_od_id"], :name => "index_doc_tables_on_razmer_od_id"
  add_index "doc_tables", ["rost_id"], :name => "index_doc_tables_on_rost_id"
  add_index "doc_tables", ["siz_id"], :name => "index_doc_tables_on_siz_id"

  create_table "docs", :force => true do |t|
    t.string   "name"
    t.boolean  "utv",           :default => true, :null => false
    t.integer  "sklad_id"
    t.integer  "postavshik_id"
    t.integer  "rabotnik_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
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

  create_table "eds", :force => true do |t|
    t.string   "name"
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

  create_table "pologenos", :force => true do |t|
    t.integer  "siz_id"
    t.decimal  "nagod"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "dolgnost_id"
    t.integer  "ed_id"
  end

  add_index "pologenos", ["dolgnost_id"], :name => "index_pologenos_on_dolgnost_id"
  add_index "pologenos", ["ed_id"], :name => "index_pologenos_on_ed_id"
  add_index "pologenos", ["siz_id"], :name => "index_pologenos_on_siz_id"

  create_table "pols", :force => true do |t|
    t.string "name"
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
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "otdel_id"
    t.integer  "dolgnost_id"
    t.integer  "razmer_id"
    t.string   "tn"
    t.boolean  "pol"
    t.integer  "rost_id"
    t.integer  "razmer_od_id"
    t.integer  "pol_id"
    t.integer  "razmer_o_id"
  end

  add_index "rabotniks", ["pol_id"], :name => "index_rabotniks_on_pol_id"
  add_index "rabotniks", ["razmer_o_id"], :name => "index_rabotniks_on_razmer_o_id"
  add_index "rabotniks", ["razmer_od_id"], :name => "index_rabotniks_on_razmer_od_id"
  add_index "rabotniks", ["rost_id"], :name => "index_rabotniks_on_rost_id"

  create_table "razmer_gos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "razmer_ods", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "razmer_os", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reg_drs", :force => true do |t|
    t.integer  "siz_id"
    t.integer  "doc_id"
    t.decimal  "kol"
    t.integer  "rost_id"
    t.integer  "razmer_o_id"
    t.integer  "razmer_od_id"
    t.integer  "razmer_go_id"
    t.integer  "rabotnik_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "reg_drs", ["doc_id"], :name => "index_reg_drs_on_doc_id"
  add_index "reg_drs", ["rabotnik_id"], :name => "index_reg_drs_on_rabotnik_id"
  add_index "reg_drs", ["razmer_go_id"], :name => "index_reg_drs_on_razmer_go_id"
  add_index "reg_drs", ["razmer_o_id"], :name => "index_reg_drs_on_razmer_o_id"
  add_index "reg_drs", ["razmer_od_id"], :name => "index_reg_drs_on_razmer_od_id"
  add_index "reg_drs", ["rost_id"], :name => "index_reg_drs_on_rost_id"
  add_index "reg_drs", ["siz_id"], :name => "index_reg_drs_on_siz_id"

  create_table "rosts", :force => true do |t|
    t.string   "name"
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
    t.decimal  "srok"
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

  create_table "vid_sos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
