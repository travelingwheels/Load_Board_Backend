class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :direction

  validates :content,  presence: true
  
end
