class CreateVidSos < ActiveRecord::Migration
  def change
    create_table :vid_sos do |t|
      t.string :name

      t.timestamps
    end
  end
end
