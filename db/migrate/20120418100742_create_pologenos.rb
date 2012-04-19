class CreatePologenos < ActiveRecord::Migration
  def change
    create_table :pologenos do |t|
      t.references :siz
      t.decimal :nagod

      t.timestamps
    end
    add_index :pologenos, :siz_id
  end
end
