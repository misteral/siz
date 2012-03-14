class CreateSizs < ActiveRecord::Migration
  def change
    create_table :sizs do |t|
      t.string :name
      t.references :tip_so
      t.references :vid_so
      t.string :sert
      t.string :nom

      t.timestamps
    end
    add_index :sizs, :tip_so_id
    add_index :sizs, :vid_so_id
  end
end
