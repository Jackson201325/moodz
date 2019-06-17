class ArtistSongLike < ApplicationRecord
  belongs_to :user
  has_many :artist_song
end
