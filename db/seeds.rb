require 'faker'

brands = ["Patek Philippe", "Audemars Piguet", "Vacheron Constantin", "TagHeuer", "LangeSöhne", "Jaeger-LeCoultre", "Rolex", "Hublot", "Breguet & Fils", "Chopard", "Girard-Perregaux", "Blancpain", "Cartier", "IWC Schaffhausen", "Ulysse Nardin", "Panerai", "Piaget", "Breitling", "Omega", "Montblanc"]
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clearing database..."
Item.delete_all

puts "Creating seeds"
20.times do
  name: Faker::
  photo:
  category: "Watches"
  brand: brands.sample
  address: Faker::Address.full_address
  price: Faker::Commerce.price(range = 100..500)
end
