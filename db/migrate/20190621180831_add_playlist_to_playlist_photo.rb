class AddPlaylistToPlaylistPhoto < ActiveRecord::Migration[5.2]
  def change
    add_reference :playlist_photos, :playlist, index: true
  end
end
