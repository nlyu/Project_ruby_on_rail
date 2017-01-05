class User < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	has_many :posts, dependent: :destroy
	validates :name, length: { maximum: 50 }, presence: true # 把 FILL_IN 换成正确的代码
  	validates :email, length: { maximum: 100 }, format: { with: VALID_EMAIL_REGEX }, presence: true, uniqueness: {case_sensitive: false} # 把 FILL_IN 换成正确的代码
  	has_secure_password
  	validates :password, presence: true, length: { minimum: 8 }
end
