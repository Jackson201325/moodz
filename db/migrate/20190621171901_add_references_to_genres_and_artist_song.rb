class AddReferencesToGenresAndArtistSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :genres, :artist_song, index: true
    add_reference :genres, :artist_album, index: true
    add_reference :artist_songs, :artist, index: true
  end
end
