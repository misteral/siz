class AddColumnRostRazmerToRabotniks < ActiveRecord::Migration
  def change
    add_column :rabotniks, :rost_id, :integer
    add_index  :rabotniks, :rost_id
    add_column :rabotniks, :razmer_od_id, :integer
    add_index :rabotniks, :razmer_od_id
    add_column :rabotniks, :pol_id, :integer
    add_index :rabotniks, :pol_id
    add_column :rabotniks, :razmer_o_id, :integer
    add_index :rabotniks, :razmer_o_id
  end
end
