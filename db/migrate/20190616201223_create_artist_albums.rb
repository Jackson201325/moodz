class CreateArtistAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_albums do |t|

      t.timestamps
    end
  end
end
