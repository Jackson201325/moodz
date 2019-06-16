class AddUserPlaylistToPlaylistLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :playlist_likes, :user, index: true
    add_reference :playlist_likes, :playlist, index: true
  end
end
