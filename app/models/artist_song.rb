class ArtistSong < ApplicationRecord
  belongs_to :artist_album
  belongs_to :genre
  belongs_to :artist
end
