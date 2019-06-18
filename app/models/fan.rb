class Fan < ApplicationRecord
  has_many :users
  belongs_to :artist
end
