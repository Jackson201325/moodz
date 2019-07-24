class AddArtistToArtistSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :artist_songs, :artist, index: true
  end
end
