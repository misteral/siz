class AddColToRabotnik < ActiveRecord::Migration
  def change
    add_column :rabotniks, :razmer, :string
    add_column :rabotniks, :rost, :string
    add_column :rabotniks, :razmer_o, :string
    add_column :rabotniks, :razmer_g, :string
  end
end
