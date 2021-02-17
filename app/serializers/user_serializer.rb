class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :vaccinated, :avatar, :first_name, :last_name, :age, :hometown

  has_one :wall
  has_many :posts, through: :wall
  
  has_many :friendships
  has_many :friends, through: :friendships, class_name: "User"
end
