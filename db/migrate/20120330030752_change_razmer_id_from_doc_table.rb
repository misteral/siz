class ChangeRazmerIdFromDocTable < ActiveRecord::Migration
  def change
    remove_column :doc_tables, :razmer_id
    add_column :doc_tables, :razmer_od_id, :integer
    add_column :doc_tables, :razmer_go_id, :integer
    add_column :doc_tables, :razmer_o_id, :integer
    add_column :doc_tables, :rost_id, :integer

    add_index :doc_tables, :razmer_od_id
    add_index :doc_tables, :razmer_go_id
    add_index :doc_tables, :razmer_o_id
    add_index :doc_tables, :rost_id
  end
end
