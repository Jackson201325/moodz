class CreateArtistAlbumLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_album_likes do |t|

      t.timestamps
    end
  end
end
