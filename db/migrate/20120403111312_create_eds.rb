class CreateEds < ActiveRecord::Migration
  def change
    create_table :eds do |t|
      t.string :name

      t.timestamps
    end
  end
end
