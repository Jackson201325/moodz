class UserPhoto < ApplicationRecord
  belongs_to :user 
  mount_uploader :data , PhotoUploader
end

# class_name: "user", foreign_key: "user_id"