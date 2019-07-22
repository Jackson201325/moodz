class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :follows_as_follower, source: :follows, foreign_key: :follower_id
  has_many :follows_as_followee, source: :follows, foreign_key: :followee_id
  has_many :playlists, dependent: :destroy
  has_many :user_songs, dependent: :destroy

end
