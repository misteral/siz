class CreateRazmerGos < ActiveRecord::Migration
  def change
    create_table :razmer_gos do |t|
      t.string :name

      t.timestamps
    end
  end
end
