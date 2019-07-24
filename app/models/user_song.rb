class UserSong < ApplicationRecord
  belongs_to :artist_song
  belongs_to :user
  belongs_to :playlist
end
