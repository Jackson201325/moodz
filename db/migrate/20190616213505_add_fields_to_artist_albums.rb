class AddFieldsToArtistAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :artist_albums, :name, :string
    add_reference :artist_albums, :artist_album, index: true
    add_reference :artist_albums, :genre, index: true
    add_reference :artist_albums, :artist_song_like, index: true
    add_reference :artist_albums, :artist, index: true
  end
end
