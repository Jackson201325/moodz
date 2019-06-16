class CreateArtistSongLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_song_likes do |t|

      t.timestamps
    end
  end
end
