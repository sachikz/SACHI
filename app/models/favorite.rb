class Favorite < ApplicationRecord
  has_many :comments, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :title, presence: true
  validates :content, presence: true
end
