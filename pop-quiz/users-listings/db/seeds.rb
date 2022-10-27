# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

200.times do |i| 
    first_name = Faker::Name.first_name
    last_name=Faker::Name.last_name
    email=Faker::Internet.email
    title=Faker::Job.title
    
    User.create(first_name: first_name,last_name: last_name,email: email,position: title)
    end
    
 # 1.User.first
 # 2.User.last
 # 3.User.limit(10)
 # 4.User.limit(100)
 # 5.User.order(:last_name).limit(100)
 # 6.User.order(:email).limit(200)
 # 7.User.where("email like ?", "%yahoo%").destroy_all
 # 8.User.where("last_name like ?", "d%").destroy.all
 # 9.
 # 10.