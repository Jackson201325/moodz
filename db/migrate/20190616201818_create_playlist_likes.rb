class CreatePlaylistLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_likes do |t|

      t.timestamps
    end
  end
end
