class AddEdToDocTable < ActiveRecord::Migration
  def change
    add_column :doc_tables, :ed_id, :integer
    add_index :doc_tables, :ed_id
  end
end
