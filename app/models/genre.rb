class Genre < ApplicationRecord
  has_many :artist_album
  has_many :artist_song
end
