class ArtistPhoto < ApplicationRecord
  belongs_to :artist
  mount_uploader :data , PhotoUploader
end
