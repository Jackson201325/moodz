class CreateArtistPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_photos do |t|
      t.references :artist, foreign_key: true
      t.string :data

      t.timestamps
    end
  end
end
