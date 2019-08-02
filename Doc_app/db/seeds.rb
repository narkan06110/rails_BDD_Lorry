# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointement.destroy_all
City.destroy_all
Speciality.destroy_all
JoinTablesDoctorSpeciality.destroy_all

cities = []
spe = []
doc = []
pat = []

40.times do 
	cities << City.create!(name: Faker::Nation.capital_city)
end 

15.times do 
	spe << Speciality.create!(name: Faker::Movies::StarWars.planet)
end 

50.times do 
	doc << Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::IDNumber.valid, city: cities.sample)
end 

150.times do 
	pat << Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: cities.sample)
end 

60.times do 
	Appointement.create!(date: Faker::Date.between(from: 5.years.ago, to: Date.today), doctor: doc.sample, patient: pat.sample, city: cities.sample)	
end 

50.times do 
	JoinTablesDoctorSpeciality.create!(doctor: doc.sample, speciality: spe.sample)
end