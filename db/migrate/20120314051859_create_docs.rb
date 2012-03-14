class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :name
      t.boolean :utv
      t.references :sklad
      t.references :postavshik
      t.references :rabotnik

      t.timestamps
    end
    add_index :docs, :sklad_id
    add_index :docs, :postavshik_id
    add_index :docs, :rabotnik_id
  end
end
