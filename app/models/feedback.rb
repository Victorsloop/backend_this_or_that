class Feedback < ApplicationRecord
    belongs_to :post
    has_one :user, through: :post
    # has_one :user
end
