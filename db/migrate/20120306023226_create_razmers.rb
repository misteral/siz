class CreateRazmers < ActiveRecord::Migration
  def change
    create_table :razmers do |t|
      t.string :naim
      t.string :razmer
      t.string :rost
      t.string :razmer_o
      t.string :razmer_g

      t.timestamps
    end
  end
end
