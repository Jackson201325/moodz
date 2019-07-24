class AddUserToPlaylist < ActiveRecord::Migration[5.2]
  def change
    add_reference :playlists, :user, index: true
  end
end
