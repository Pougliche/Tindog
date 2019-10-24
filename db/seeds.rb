require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |index|
    city = City.create!(city_name: Faker::Address.city)
end

100.times do |index|
dog_sitter = DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)

dog = Dog.create!(dog_name: Faker::Creature::Dog.name, breed_name: Faker::Creature::Dog.breed, gender: Faker::Creature::Dog.gender , city: City.all.sample)

stroll = Stroll.create(dog_sitter: dog_sitter, dog: Dog.all.sample, city: dog_sitter.city, stroll_time: Faker::Time.forward(days: 30))

end