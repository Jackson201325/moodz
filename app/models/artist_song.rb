class ArtistSong < ApplicationRecord
  belongs_to :artist_album
  has_one :genre
  belongs_to :artist_song_like
  belongs_to :artist
end
