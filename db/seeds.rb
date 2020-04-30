# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
City.destroy_all
Stroll.destroy_all
Dogsitter.destroy_all

100.tims do
    Dog.create!(
        name: Faker::Name.first_name
    )
    City.create!(
        name_city: Faker::Address.city
    )
    Stroll.create!(
        date :Faker::Date.forward(days: 30),
        dog: dog,
        City: city,
        dogsitter: dogsitter
    )
    Dogsitter.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end