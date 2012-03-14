class CreatePostavshiks < ActiveRecord::Migration
  def change
    create_table :postavshiks do |t|
      t.string :name

      t.timestamps
    end
  end
end
