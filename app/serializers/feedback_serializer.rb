class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :comment ,:pro,:con,:user_id,:post_id
  belongs_to :post
  has_one :user, through: :post
end

