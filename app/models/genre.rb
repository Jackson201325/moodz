class Genre < ApplicationRecord
  has_many :artist_songs
end
