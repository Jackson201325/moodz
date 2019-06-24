class AddArtistAlbumRefToAlbumPhotos < ActiveRecord::Migration[5.2]
  def change
    add_reference :album_photos, :artist_album, foreign_key: true
  end
end
