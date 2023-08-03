# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
#Creates 10 fake cities
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

#Create 10 fake users (Users belong to one city). Bang blocks unvalidated records
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 15),
    email: Faker::Internet.email,
    age: rand(16..80),
    city: City.all.sample
  )
end

#Create gossip tags
30.times do
  Tag.create!(
    title: Faker::Lorem.sentence(word_count: 1),
  )
end

#Create fake gossip
20.times do
  gossip = Gossip.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.sentence(word_count: 20),
    user: User.all.sample
  )
  gossip.tags = Tag.all.sample(rand(1..3))
end