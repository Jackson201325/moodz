class AddArtistSongToUserSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_songs, :artist_song, index: true
  end
end
