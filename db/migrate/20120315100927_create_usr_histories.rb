class CreateUsrHistories < ActiveRecord::Migration
  def change
    create_table :usr_histories do |t|
      t.references :docs
      t.references :sizs
      t.decimal :kol
      t.boolean :napr

      t.timestamps
    end
    add_index :usr_histories, :docs_id
    add_index :usr_histories, :sizs_id
  end
end
