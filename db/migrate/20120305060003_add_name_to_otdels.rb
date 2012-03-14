class AddNameToOtdels < ActiveRecord::Migration
  def change
    add_column :otdels, :name, :string

  end
end
