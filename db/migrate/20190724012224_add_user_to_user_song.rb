class AddUserToUserSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_songs, :user, index: true
  end
end
