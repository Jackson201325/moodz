class Genre < ApplicationRecord
  has_many :artist_songs
  has_many :artist_albums
end
