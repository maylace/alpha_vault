class AddColumsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :login, :string 
  	add_column :users, :firstname, :string
  	add_column :users, :lastname, :string 
  	add_column :users, :local, :string
  end
end
