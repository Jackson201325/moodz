class ArtistSong < ApplicationRecord
  belongs_to :artist_album, class_name: "artist_album", foreign_key: "artist_album_id"
  has_one :genre
  belongs_to :artist
end
