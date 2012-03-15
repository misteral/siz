class AddTipDocToDocs < ActiveRecord::Migration
  def change
    add_column :docs, :tip_doc_id, :integer
    add_index :docs, :tip_doc_id
  end
end
