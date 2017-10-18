class Post < ApplicationRecord
  belongs_to :user
  #validates :avatar, file_size: { less_than: 3.megabytes }
end
