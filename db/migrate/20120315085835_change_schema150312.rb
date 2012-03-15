class ChangeSchema150312 < ActiveRecord::Migration
  def up
    remove_column :razmers, :doc_tables_id
    add_column :doc_tables, :razmer_id, :integer
    add_index :doc_tables, :razmer_id
  end

end
