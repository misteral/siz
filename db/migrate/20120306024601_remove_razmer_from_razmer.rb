class RemoveRazmerFromRazmer < ActiveRecord::Migration
  def up
    remove_column :razmers, :razmer
    add_column :razmers, :razmer_ch, :string
  end

end
