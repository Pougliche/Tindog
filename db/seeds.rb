require 'faker'
require 'colorize'

20.times do |index|
    city = City.create!(city_name: Faker::Address.city)
end

100.times do |index|
dog_sitter = DogSitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
    dog = Dog.create!(dog_name: Faker::Creature::Dog.name, breed_name: Faker::Creature::Dog.breed, gender: Faker::Creature::Dog.gender , city: City.all.sample)
        stroll = Stroll.create(dog_sitter: dog_sitter, dog: Dog.all.sample, city: dog_sitter.city, stroll_time: Faker::Time.forward(days: 30))

end

puts "20 CITIES HAVE BEEN CREATED. 100 DOGGOS, DOGSITTERS AND STROLLS HAVE BEEN CREATED. WIF WIF!".yellow