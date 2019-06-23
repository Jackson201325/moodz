class UserSong < ApplicationRecord
  belongs_to :artist_song
  belongs_to :user
end
