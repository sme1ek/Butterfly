class AddUsernameToUsers < ActiveRecord::Migration
  def change
  add_column :users, :username, :string # add a new column to table users called "username" and of type "string"
  add_index :users, :username, unique: true
  end
end
