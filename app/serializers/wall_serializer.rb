class WallSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  has_many :posts
end
