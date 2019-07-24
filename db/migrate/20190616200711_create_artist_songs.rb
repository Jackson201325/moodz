class CreateArtistSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_songs do |t|
      t.string :title
      t.references :genre
      t.references :artist
      t.references :artist_album
      t.timestamps
    end
  end
end
