class ArtistSong < ApplicationRecord
    belongs_to :artist_album
    has_many :user_songs
end
