class ChangeUtvInDocTableAddDefault < ActiveRecord::Migration
  def up
    change_column :docs, :utv, :boolean, :default => true, :null => false
  end
end
