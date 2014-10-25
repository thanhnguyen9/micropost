class Relationship < ActiveRecord::Base
  belongs_to :follower, class: "User"
  belongs_to :followed, class: "User"
end
