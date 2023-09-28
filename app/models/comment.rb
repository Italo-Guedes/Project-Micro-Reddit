class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, length: {in: 25..130}, presence: true
  
    
end
