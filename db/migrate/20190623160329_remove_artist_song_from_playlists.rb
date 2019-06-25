class RemoveArtistSongFromPlaylists < ActiveRecord::Migration[5.2]
  def change
    remove_reference :playlists, :user_song, index: true
  end
end
