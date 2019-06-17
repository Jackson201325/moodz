class AddFieldsToArtistSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :artist_songs, :artist_album, index: true
    add_reference :artist_songs, :genre, index: true
    add_reference :artist_songs, :artist_album_like, index: true
    add_reference :artist_songs, :artist, index: true
  end
end
