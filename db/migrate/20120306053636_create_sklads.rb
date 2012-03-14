class CreateSklads < ActiveRecord::Migration
  def change
    create_table :sklads do |t|
      t.string :naim

      t.timestamps
    end
  end
end
