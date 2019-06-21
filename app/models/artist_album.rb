class ArtistAlbum < ApplicationRecord
  belongs_to :artist
  has_many :artist_songs
  belongs_to :genre
end
