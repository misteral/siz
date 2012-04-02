class CreateRazmerOds < ActiveRecord::Migration
  def change
    create_table :razmer_ods do |t|
      t.string :name

      t.timestamps
    end
  end
end
