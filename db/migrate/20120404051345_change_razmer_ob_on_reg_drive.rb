class ChangeRazmerObOnRegDrive < ActiveRecord::Migration
  def change
    remove_column :reg_drives, :razmer_ob_id
    add_column :reg_drives, :razmer_od_id, :integer
    add_index :reg_drives, :razmer_od_id
  end
end
