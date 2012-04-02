class CreateRosts < ActiveRecord::Migration
  def change
    create_table :rosts do |t|
      t.string :name

      t.timestamps
    end
  end
end
