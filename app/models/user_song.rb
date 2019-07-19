class UserSong < ApplicationRecord
  belongs_to :user
  belongs_to :playlist
end
