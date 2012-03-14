class AddTnToRabotnik < ActiveRecord::Migration
  def change
    add_column :rabotniks, :tn, :string

  end
end
