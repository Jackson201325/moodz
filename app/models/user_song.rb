class UserSong < ApplicationRecord
  belongs_to :artist_song, class_name: "artist_song", foreign_key: "artist_song_id"
end
