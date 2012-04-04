class RemoveRazmer < ActiveRecord::Migration
  def up
    drop_table :razmers
  end
end
