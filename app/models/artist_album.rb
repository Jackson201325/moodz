class ArtistAlbum < ApplicationRecord
  belongs_to :artist
  has_many :artist_songs, dependent: :destroy
  belongs_to :genre
end
