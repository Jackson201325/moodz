class Playlist < ApplicationRecord
  has_many :user_song
  has_many :playlist_likes
end
