class AddReferencesToRabotniks < ActiveRecord::Migration
  def change
    change_table :rabotniks do |t|
      t.references :otdel
      t.references :dolgnost
    end
  end
end
