class CreateRegDrs < ActiveRecord::Migration
  def change
    create_table :reg_drs do |t|
      t.references :siz
      t.references :doc
      t.decimal :kol
      t.references :rost
      t.references :razmer_o
      t.references :razmer_od
      t.references :razmer_go
      t.references :rabotnik

      t.timestamps
    end
    add_index :reg_drs, :siz_id
    add_index :reg_drs, :doc_id
    add_index :reg_drs, :rost_id
    add_index :reg_drs, :razmer_o_id
    add_index :reg_drs, :razmer_od_id
    add_index :reg_drs, :razmer_go_id
    add_index :reg_drs, :rabotnik_id
  end
end
