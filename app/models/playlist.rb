class Playlist < ApplicationRecord
  belongs_to :user
  has_many :user_songs
end
