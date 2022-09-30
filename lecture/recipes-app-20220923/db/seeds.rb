# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Hello I'm running a scrip there called seeds"
200.times do |i|
  
  title = Faker::Food.dish
  description = Faker::Food.description
  author = Faker::Name.name
  image_url = "https://via.placeholder.com/300/FFFF00/000000?text=#{title}"
  
  
  recipe = Recipe.create(title: title, description: description, author: author, image_url: image_url)
  if recipe
    puts "Create a record for my Recipe app called #{title}"
  end
  
end
