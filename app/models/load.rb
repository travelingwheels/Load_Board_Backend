class Load < ApplicationRecord
  has_one: direction
  belongs_to :user
end
