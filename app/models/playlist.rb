class Playlist < ApplicationRecord
  has_many :user_song
  has_many :playlist_likes
  has_many :playlist_photos
  belongs_to :user
end
