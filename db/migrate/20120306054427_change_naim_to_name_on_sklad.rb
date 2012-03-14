class ChangeNaimToNameOnSklad < ActiveRecord::Migration
  def up
    remove_column :sklads, :naim
    add_column :sklads,  :name, :string
  end
end
