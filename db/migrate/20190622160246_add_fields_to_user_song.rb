class AddFieldsToUserSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_songs, :user, index: true
    add_reference :user_songs, :playlist, index: true
  end
end
