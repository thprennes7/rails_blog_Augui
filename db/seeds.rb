# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Appelle de la gem
require 'faker'

#Remet la base de donné a 0
Like.destroy_all
Comment.destroy_all
Article.destroy_all
Category.destroy_all
User.destroy_all

#Boucle pour créer des fake random
15.times do
  #Random d'user
  user = User.create!(first_name: Faker::Name.name, last_name: Faker::Name.name, email: Faker::Internet.email)
end

5.times do
  #Random de category
  Category.create!(name: Faker::Beer.name)
end

15.times do |index|
  #Random d'article
  Article.create!(title: Faker::FunnyName.name, content: Faker::ChuckNorris.fact, user_id: User.first.id.to_i + index, category_id: Category.first.id.to_i + rand(4))
end

15.times do |index|
  #Random de comment
  Comment.create!(content: Faker::ChuckNorris.fact, user_id: User.first.id.to_i + index, article_id: Article.first.id.to_i + index)
end

15.times do |index|
  #Random de like
  Like.create!(user_id: User.first.id.to_i + index, article_id: Article.first.id.to_i + index)
end
