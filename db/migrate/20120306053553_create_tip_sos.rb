class CreateTipSos < ActiveRecord::Migration
  def change
    create_table :tip_sos do |t|
      t.string :name

      t.timestamps
    end
  end
end
