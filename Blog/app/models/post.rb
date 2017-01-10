class Post < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 14000 }, presence: true
end
