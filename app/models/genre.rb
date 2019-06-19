class Genre < ApplicationRecord
  has_one :artist_song
  has_one :artist_album, class_name: "artist_album", foreign_key: "artist_album_id"
end
