class User < ApplicationRecord
  has_many :posts
  has_many :comments 

  validates :username, length: {minimum: 4}
  validates :username, length: {maximum: 8}
  validates :password, length: {in: 3..6}
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
end
