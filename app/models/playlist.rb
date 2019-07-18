class Playlist < ApplicationRecord
  has_many :user_songs
  belongs_to :user
end
