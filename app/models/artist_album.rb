class ArtistAlbum < ApplicationRecord
  belongs_to :artist
  has_many :artist_song
  has_one :genre
end
