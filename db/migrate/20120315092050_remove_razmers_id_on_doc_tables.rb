class RemoveRazmersIdOnDocTables < ActiveRecord::Migration
  def up
    remove_column :doc_tables, :razmers_id
  end

  def down
  end
end
