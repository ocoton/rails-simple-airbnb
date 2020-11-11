# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'executing seed'
puts 'cleaning database'
Flat.destroy_all
puts 'database is clean'

puts 'creating flats'
5.times do
  flat = Flat.create(
    name: Faker::Quote.robin,
    address: Faker::Address.city,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(50..250),
    number_of_guests: rand(1..6),
  )
  puts "flat #{flat.id} generated"
end
