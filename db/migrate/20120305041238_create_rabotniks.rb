class CreateRabotniks < ActiveRecord::Migration
  def change
    create_table :rabotniks do |t|
      t.string :imy
      t.string :otch
      t.string :fam
      t.integer :otdel_id
      t.integer :dolgnost_id

      t.timestamps
    end
  end
end
