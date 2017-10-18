class User < ApplicationRecord
  has_many :posts
  mount_uploader :avatar, AvatarUploader
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, format: { with: VALID_EMAIL_REGEX },
  uniqueness: true
  validates :password, presence:true
  validates :nickname, presence:true, uniqueness: true

end
