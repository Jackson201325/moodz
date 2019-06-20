class ArtistAlbum < ApplicationRecord
  belongs_to :artist
  has_many :artist_songs
  has_one :genre
end
