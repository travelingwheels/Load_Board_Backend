class User < ApplicationRecord
    has_secure_password

    has_many :loads
	has_many :comments
	has_many :directions, through: :comments

    validates :username,  presence: true
end
