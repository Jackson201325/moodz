class RemoveArtistAlbumReferenceInArtistAlbum < ActiveRecord::Migration[5.2]
  def change
    remove_column :artist_albums, :artist_album_is

  end
end
