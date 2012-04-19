class CreatePols < ActiveRecord::Migration
  def change
    create_table :pols do |t|
      t.string :name
    end
  end
end
