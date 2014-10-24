User.create username: "peter", password: "12345"
User.create username: "jonh", password: "23456"
User.create username: "henry", password: "34567"
User.create username: "jesse", password: "45678"
User.create username: "tom", password: "56789"



  Post.create user_id: 1, tweet: Faker::Lorem.sentence
  Post.create user_id: 1, tweet: Faker::Lorem.sentence
  Post.create user_id: 1, tweet: Faker::Lorem.sentence
  Post.create user_id: 2, tweet: Faker::Lorem.sentence
  Post.create user_id: 2, tweet: Faker::Lorem.sentence
