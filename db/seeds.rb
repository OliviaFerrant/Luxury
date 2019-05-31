require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.new(
  name: 'Sea Dweller',
  photo: 'https://res.cloudinary.com/louixa/image/upload/v1559099736/Screenshot_2019-05-29_12.14.40_cld4fq.png',
  category: 'watch',
  brand: 'Rolex',
  price: 200,
  address: 'Test'  )

items.user = User.first
items.save

50.times do
  address: Faker::Address.full_address
