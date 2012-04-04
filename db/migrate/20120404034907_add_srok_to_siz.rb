class AddSrokToSiz < ActiveRecord::Migration
  def change
    add_column :sizs, :srok, :decimal

  end
end
