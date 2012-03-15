class CreateDocTables < ActiveRecord::Migration
  def change
    create_table :doc_tables do |t|
      t.references :siz
      t.references :doc
      t.decimal :kol

      t.timestamps
    end
    add_index :doc_tables, :siz_id
    add_index :doc_tables, :doc_id
  end
end
