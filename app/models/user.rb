class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: true

    has_many :friendships
    has_many :friends, through: :friendships, class_name: "User"

    has_one :wall
    has_many :posts, through: :wall
end
