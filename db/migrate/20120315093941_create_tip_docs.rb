class CreateTipDocs < ActiveRecord::Migration
  def change
    create_table :tip_docs do |t|
      t.string :name

      t.timestamps
    end
  end
end
