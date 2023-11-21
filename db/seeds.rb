# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Clearing old data"

CartItem.destroy_all
Cart.destroy_all
Item.destroy_all

puts "Creating new data"

10.times do
  Item.create!(
    name: Faker::Book.title,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price(range: 10.0..100.0, as_string: true)
  )
end

puts "items created"
