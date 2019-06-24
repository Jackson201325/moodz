class ChangePlaylistSongOrigin < ActiveRecord::Migration[5.2]
  def change
    remove_column :playlists, :artist_song
    add_reference :playlists, :user_song, index: true
  end
end
