class Playlist < ApplicationRecord
  has_many :artist_songs
  belongs_to :user
  has_many :playlist_likes
end
