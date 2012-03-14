class CreateDolgnosts < ActiveRecord::Migration
  def change
    create_table :dolgnosts do |t|
      t.string :name
      t.integer :prior

      t.timestamps
    end
  end
end
