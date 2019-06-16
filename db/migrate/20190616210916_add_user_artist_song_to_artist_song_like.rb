class AddUserArtistSongToArtistSongLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :artist_song_likes, :user, index: true
    add_reference :artist_song_likes, :artist_song, index: true
  end
end
