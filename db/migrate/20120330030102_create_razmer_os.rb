class CreateRazmerOs < ActiveRecord::Migration
  def change
    create_table :razmer_os do |t|
      t.string :name

      t.timestamps
    end
  end
end
