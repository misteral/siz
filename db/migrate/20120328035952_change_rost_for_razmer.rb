class ChangeRostForRazmer < ActiveRecord::Migration
  def change
    remove_column :razmers, :rost_o
    add_column :razmers, :razm_o, :string
  end
end
