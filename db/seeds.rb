User.create username: "peter", password: "12345", photo_url: "http://stcullen.weebly.com/uploads/1/7/6/0/1760026/2770390_orig.jpg"
User.create username: "john", password: "23456", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTmtH-ttEeSRD17fJg2c_NUp9f-wLMxzhI5kEx4Ybr-ahQHLEQL"
User.create username: "henry", password: "34567", photo_url: "https://pbs.twimg.com/profile_images/1368297285/peter_hollens_030.jpg"
User.create username: "jesse", password: "45678", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTA4NDg5MTc4NzNeQTJeQWpwZ15BbWU3MDEyMDIwNjE@._V1_SX640_SY720_.jpg"
User.create username: "tom", password: "56789", photo_url: "http://ia.media-imdb.com/images/M/MV5BMTY3MzMzNTc0OF5BMl5BanBnXkFtZTcwMTAyNzg0OA@@._V1_SY317_CR20,0,214,317_AL_.jpg"



  Post.create user_id: 1, tweet: Faker::Lorem.sentence
  Post.create user_id: 2, tweet: Faker::Lorem.sentence
  Post.create user_id: 1, tweet: Faker::Lorem.sentence
  Post.create user_id: 3, tweet: "sent porta diam vitae nulla pharetra tristique. Nam justo diam, euismod non odio quis, sollicitudin congue arcu. Phasellus varius "
  Post.create user_id: 4, tweet: 'at blandit. Pellentesque ipsum dolor, vulputate vel volutpat in, malesuada ac tellus. Cum sociis natoque penatibus et magnis dis '
  Post.create user_id: 1, tweet: 'din ornare ac id elit. Mauris consequat sagittis sem a viverra. Donec vulputate bibendum erat, a volutpat ex vestibulum eu. Mauris'
  Post.create user_id: 3, tweet: 'e posuere ultrices. Cras imperdiet lobortis erat id varius. Curabitur gravida venenatis turpis sed placerat. Morbi at felis et m'
  Post.create user_id: 2, tweet: 'et sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris massa arcu, sollicitudin i'
  Post.create user_id: 2, tweet: 'rdum nunc. Nulla faucibus sem a ornare accumsan. Aliquam id lectus ante. Fusce vulputate volutpat augue, vitae maximus libero dictum et. Fusce porttitor, urna eu pharetra sollicitudin, nisl massa aliquet massa, gravida hendrerit felis ex sit am'
  Post.create user_id: 3, tweet: 'ulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris massa arcu, sollicitudin in maximus '
  Post.create user_id: 5, tweet: "sequat sagittis sem a viverra. Donec vulputate bibendum erat, a volutpat ex vestibulum eu. Mauris feugiat sem eu nisi lacinia la"
  Post.create user_id: 3, tweet: 'arcu mattis lobortis. Donec non fringilla massa, sed varius ligula. Nam ac nunc luctus, luctus velit at, ultricies tortor. Aliquam placerat neque sit am'
  Post.create user_id: 4, tweet: 'Etiam quis nibh rhoncus, tincidunt ex malesuada, maximus nunc. Vivamus et lobortis mau'
  Post.create user_id: 1, tweet: 'tra tristique. Nam justo diam, euismod non odio quis, sollicitudin congue arcu. Phasellus varius lacus nec feugiat blandit. '
  Post.create user_id: 2, tweet: 'm et. Fusce porttitor, urna eu pharetra sollicitudin, nisl massa aliquet massa, gravida hendrerit felis ex sit amet ligula. Do'
