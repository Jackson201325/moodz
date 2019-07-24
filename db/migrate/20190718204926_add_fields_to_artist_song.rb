class AddFieldsToArtistSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :artist_songs, :genre, index: true
    add_reference :artist_songs, :artist_album, index: true
    add_reference :artist_albums, :artist, index: true
    add_reference :artist_albums, :genre, index: true
    add_column :artist_albums, :title, :string
    add_column :genres, :name, :string
    add_column :playlists, :name, :string
    add_column :playlists, :description, :string
    add_reference :user_songs, :artist_song, index: true
  end
end
