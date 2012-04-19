class AddEdIdToPologenos < ActiveRecord::Migration
  def change
    add_column :pologenos, :ed_id, :integer
    add_index :pologenos, :ed_id
  end
end
