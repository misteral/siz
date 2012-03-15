class CreateOstatoks < ActiveRecord::Migration
  def change
    create_table :ostatoks do |t|
      t.decimal :kol
      t.references :sklads
      t.references :sizs

      t.timestamps
    end
    add_index :ostatoks, :sklads_id
    add_index :ostatoks, :sizs_id
  end
end
