# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
User.destroy_all
GossipItem.destroy_all
Tag.destroy_all
JoinTableGossipTag.destroy_all

cities = []
human = []
gossip = []
tags = []

10.times do 
	cities << City.create!(name: Faker::Movies::HarryPotter.location, zip_code: Faker::IDNumber.valid)
end 

10.times do 
	human << User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentences(number: 5), email: Faker::Internet.email, age: Faker::Number.between(from: 13, to: 100), city: cities.sample)
end 

20.times do 
	gossip << GossipItem.create!(title: Faker::Lorem.sentence(word_count: 4), content:Faker::Lorem.paragraph(sentence_count: 6), user: human.sample)
end 

10.times do 
	tags << Tag.create!(title: Faker::Lorem.sentence(word_count: 1))
end 

20.times do 
	JoinTableGossipTag.create!(gossip_item: gossip.sample, tag: tags.sample)
end