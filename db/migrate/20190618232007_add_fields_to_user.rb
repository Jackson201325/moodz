class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_reference :users, :follower, foreign_key: true
    add_reference :users, :playlist, index: true
    add_reference :users, :user_song, index: true
    add_reference :users, :idol, index: true  
  end
end
