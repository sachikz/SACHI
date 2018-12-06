class Comment < ApplicationRecord
  belongs_to :favorite
  validates :commenter, presence: true
  validates :body, presence: true
end
