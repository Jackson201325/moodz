class CreatePlaylistPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_photos do |t|

      t.timestamps
    end
  end
end
