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


item_1 = Item.create!(
  name: 'Ronix RXT Wakeboard 2023',
  description: 'The Ronix RXT wakeboard is one of the highest-end boards for a good reason. This deck rips. It has the lightweight blackout technology construction with a continuous rocker profile. If you are looking for an explosive, lightweight board that will ride smooth and keep your landings soft, go with the Ronix RXT wakeboard.',
  price: '2000'
)

puts "Created item 1"

item_2 = Item.create!(
  name: 'Hyperlite State 2.0 Wakeboard 2023',
  description: 'The Hyperlite State 2.0 Wakeboard is an asymmetrical wakeboard with a lot of added tech to help you learn, progress, and have fun wakeboarding.',
  price: '1500'
)

puts "Created item 2"

item_3 = Item.create!(
  name: 'Slingshot Nomad Wakeboard 2023',
  description: 'The Slingshot Nomad Wakeboard is perfect if you want a wakeboard that is as great behind a boat as it is in the cable park. The Nomad is a fun, pressable, and durable ride. If you are looking for a crossover board that can do it all, check out the Nomad.',
  price: '1730'
)

puts "Created item 3"

item_4 = Item.create!(
  name: 'Ronix One Timebomb 2023',
  description: 'The Ronix One Timebomb is one of the fastest and most explosive wakeboards out there. If you are an intermediate to advanced rider looking for an energetic, responsive, and rapid fast wakeboard, this is it.',
  price: '1680'
)

puts "Created item 4"

item_5 = Item.create!(
  name: 'Liquid Force Remedy Wakeboard 2023',
  description: 'The Liquid Force Remedy wakeboard is Harley Clifford’s pro model. It is one of the best boards you can get if you are looking for more air time behind a boat. This board has a few features that will improve your riding and launch you even higher and allow for softer landings.',
  price: '1890'
)

puts "Created item 5"

item_6 = Item.create!(
  name: 'Slingshot Coalition Wakeboard 2023',
  description: 'The Slingshot Coalition Wakeboard is a soft flexing deck that is perfect for hitting rails in the park. While it is flexible, it will feel like a versatile, forgiving, and smooth-riding deck (rather than a lifeless noodle). This is an excellent wakeboard for any rider looking for a cable park-specific setup.',
  price: '1490'
)

puts "Created item 6"

item_7 = Item.create!(
  name: 'Hyperlite Murray Pro Wakeboard 2023',
  description: 'The Hyperlite Murray Wakeboard is a mellow three-stage rocker that is perfect for riders of all skill levels. This wakeboard is Shaun Murray’s signature pro model, and there are a ton of features crammed into it that makes it pop incredibly well, keep it lightweight, and soften your landings to a level you have never felt before.',
  price: '1810'
)

puts "Created item 7"

item_8 = Item.create!(
  name: 'Ronix Quarter ‘Til Midnight Wakeboard 2023',
  description: 'The Ronix Quarter ‘Til Midnight is a boat wakeboard for any skill level designed specifically for the ladies. This has a hybrid-style shape where it blends a continuous rocker in the center with a 3 stage rocker in the nose and tail. The benefit is a board that feels smooth and easy to ride, while it can still give you an extra kick off of the wake.',
  price: '1410'
)

puts "Created item 8"

item_9 = Item.create!(
  name: 'Hyperlite Riot Loaded Wakeboard 2023',
  description: 'The Hyperlite Riot Loaded Wakeboard is the lightest and most durable deck that you can buy. If you a boat rider looking for the top of the line technology to help you explode off the wake, this is the wakeboard you should buy.',
  price: '1910'
)

puts "Created item 9"



item_10 = Item.create!(
  name: 'Liquid Force Trip Wakeboard 2023',
  description: 'There is a reason this wakeboard has been in the Liquid Force line for 23 years, it rips! The Liquid Force Trip is perfect for beginners because it makes landings feel softer, it is easy to ride, and it will give you an extra boost off the wake.',
  price: '450'
)

puts "Created item 10"

cart_1 = Cart.create!{
}

puts 'Cart created'
