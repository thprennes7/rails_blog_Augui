# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

15.times do
  user = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, email: Faker::Internet.email)
end

5.times do
  Category.create!(name: Faker::Beer.name)
end

15.times do |index|
  Article.create!(title: Faker::FunnyName.name, content: Faker::ChuckNorris.fact, user_id: index + 1, category_id: rand(5))
end

15.times do |index|
  Comment.create!(content: Faker::ChuckNorris.fact, user_id: index + 1, article_id: index + 1)
end

15.times do |index|
  Like.create!(user_id: index + 1, article_id: index + 1)
end
