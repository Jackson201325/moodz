class ArtistSong < ApplicationRecord
  has_many :user_songs
  belongs_to :artist_album
  belongs_to :genre
  belongs_to :artist
end
