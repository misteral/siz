class DeleteColOnRabotnik < ActiveRecord::Migration
  def up
    remove_column :rabotniks, :rost
    remove_column :rabotniks, :razmer
    remove_column :rabotniks, :razmer_g
    remove_column :rabotniks, :razmer_o
  end
end
