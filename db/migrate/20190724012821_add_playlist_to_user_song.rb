class AddPlaylistToUserSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_songs, :playlist, index: true

  end
end
