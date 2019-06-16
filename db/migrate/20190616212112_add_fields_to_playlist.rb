class AddFieldsToPlaylist < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :name, :string
    add_column :playlists, :description, :text
    add_reference :playlists, :playlist_photo, index: true
    add_reference :playlists, :artist_song, index: true
    add_reference :playlists, :playlist_like, index: true
  end
end
