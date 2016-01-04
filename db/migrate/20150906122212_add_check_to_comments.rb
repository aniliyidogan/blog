class AddCheckToComments < ActiveRecord::Migration
  def change
    add_column :comments, :chech, :boolean, default: false
  end
end
