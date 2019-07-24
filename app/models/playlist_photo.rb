class PlaylistPhoto < ApplicationRecord
  belongs_to :playlist
  mount_uploader :data , PhotoUploader
end
