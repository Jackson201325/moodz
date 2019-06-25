class RemoveArtistFromArtistSong < ActiveRecord::Migration[5.2]
  def change
    remove_column :artist_songs, :artist_id
  end
end
