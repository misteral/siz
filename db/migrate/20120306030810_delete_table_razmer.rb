class DeleteTableRazmer < ActiveRecord::Migration
  def change
    drop_table :razmers
  end

end
