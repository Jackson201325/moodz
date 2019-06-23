class ArtistAlbum < ApplicationRecord
  belongs_to :artist
  has_many :artist_songs
  has_many :album_photos
  belongs_to :genre
end
