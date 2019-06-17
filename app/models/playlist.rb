class Playlist < ApplicationRecord
  has_many :artist_song
  belongs_to :user
  has_many :playlist_like
end
