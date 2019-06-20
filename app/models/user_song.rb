class UserSong < ApplicationRecord
  has_one :artist_song, class_name: "artist_song", foreign_key: "artist_song_id"
  belongs_to :user, class_name: "user", foreign_key: "user_id"
end
