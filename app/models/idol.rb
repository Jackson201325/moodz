class Idol < ApplicationRecord
  has_many :artists
  belongs_to :user, class_name: "user", foreign_key: "user_id"
end
