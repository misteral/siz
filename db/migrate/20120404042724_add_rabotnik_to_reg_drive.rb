class AddRabotnikToRegDrive < ActiveRecord::Migration
  def change
    add_column :reg_drives, :rabotnik_id, :integer
    add_index :reg_drives, :rabotnik_id
  end
end
