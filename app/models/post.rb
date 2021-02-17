class Post < ApplicationRecord
    belongs_to :wall
    has_one :user, through: :wall
end
