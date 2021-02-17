class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :img_url
  belongs_to :wall
  has_one :user, through: :wall
  # has_many :feedback
end
