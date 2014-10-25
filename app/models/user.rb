class User < ActiveRecord::Base
  has_many :posts

  has_many :follower_relationships, class: "Relationship", foreign_key: "followed_id"
  has_many :followed_relationships, class: "Relationship", foreign_key: "follower_id"

  has_many :followers, through: :follower_relationships
  has_many :followeds, through: :followed_relationships

end
