class CreateOtdels < ActiveRecord::Migration
  def change
    create_table :otdels do |t|

      t.timestamps
    end
  end
end
