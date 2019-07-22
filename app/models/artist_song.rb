class ArtistSong < ApplicationRecord
  has_many :user_songs
  belongs_to :artist_album
  belongs_to :genreå
end
