class RemovePlaylistPhotoFromPlaylist < ActiveRecord::Migration[5.2]
  def change
    remove_column :playlists, :playlist_photo_id
  end
end
