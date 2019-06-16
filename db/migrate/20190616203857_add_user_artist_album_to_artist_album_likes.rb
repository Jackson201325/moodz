class AddUserArtistAlbumToArtistAlbumLikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :artist_album_likes, :artist_album, index: true
    add_reference :artist_album_likes, :user, index: true
  end
end
