class User < ActiveRecord::Base
  has_many :posts

  has_many :relationships
  has_many :friends, through: :relationships, class_name: "User"
end
