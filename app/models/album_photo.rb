class AlbumPhoto < ApplicationRecord
  belongs_to :artist_album
  mount_uploader :data , PhotoUploader
end
