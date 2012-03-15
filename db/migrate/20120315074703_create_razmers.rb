class CreateRazmers < ActiveRecord::Migration
  def change
    create_table :razmers do |t|
      t.string :name
      t.string :rost
      t.string :razm
      t.string :razm_g
      t.string :rost_o
      t.references :doc_tables

      t.timestamps
    end
    add_index :razmers, :doc_tables_id
  end
end
