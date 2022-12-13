User.followers = Faker::Number.between(from: 1, to: 300)
User.followed = Faker::Number.between(from: 1, to: 300)
user.save!