class AddDolgnosToPologeno < ActiveRecord::Migration
  def change
    add_column :pologenos, :dolgnost_id, :integer
    add_index :pologenos, :dolgnost_id
  end
end
