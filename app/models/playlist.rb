class Playlist < ApplicationRecord
  has_many :user_song
  belongs_to :user
  has_many :playlist_like
end
