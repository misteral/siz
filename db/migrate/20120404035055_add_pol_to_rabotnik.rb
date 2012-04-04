class AddPolToRabotnik < ActiveRecord::Migration
  def change
    add_column :rabotniks, :pol, :boolean

  end
end
