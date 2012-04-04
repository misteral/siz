class DeleteUsrHistory < ActiveRecord::Migration
  def up
    drop_table :usr_histories
  end
end
