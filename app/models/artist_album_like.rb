class ArtistAlbumLike < ApplicationRecord
  belongs_to :user
  has_many :artist_album
end
