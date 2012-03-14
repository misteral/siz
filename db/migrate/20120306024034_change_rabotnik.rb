class ChangeRabotnik < ActiveRecord::Migration
  def change
    change_table :rabotniks do |t|
      t.references :razmer
    end
  end
end
