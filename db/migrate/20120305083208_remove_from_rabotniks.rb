class RemoveFromRabotniks < ActiveRecord::Migration
  def change
    remove_column :rabotniks, :otdel_id
    remove_column :rabotniks , :dolgnost_id
  end

end
