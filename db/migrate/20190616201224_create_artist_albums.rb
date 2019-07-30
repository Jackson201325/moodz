class CreateArtistAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_albums do |t|
      t.string :title
      t.references :artist
      t.references :genre
      t.timestamps
    end
  end
end
