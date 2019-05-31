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
User.delete_all

puts "Creating seeds"

Item.create!(
    name: "Oyster Silver",
    photo: "https://cdn11.bigcommerce.com/s-1ah1x75lfn/images/stencil/original/products/3478/20483/rolex_5900_1__46270.1550603900.jpg?c=2",
    category: "Watches",
    brand: "Rolex",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
  )
Item.create!(
    name: "IWC Pilot Gold",
    photo: "https://www.iwc.com/content/dam/rcq/iwc/18/13/21/0/1813210.png.transform.global_image_png_180_2x.png",
    category: "Watches",
    brand: "IWC",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)
Item.create!(
    name: "IWC Portuguese",
    photo: "https://cdn2.chrono24.com/images/uhren/images_60/s5/11072560gross_v1558391264460.jpg",
    category: "Watches",
    brand: "IWC",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)
Item.create!(
    name: "Breitling Pilot",
    photo: "https://www.goldsmiths.co.uk/medias/?context=bWFzdGVyfGNvbnRlbnRfaW1hZ2VzfDIwNzcxfGltYWdlL2pwZWd8Y29udGVudF9pbWFnZXMvaDZkL2g1My85MDM2NjQ5NDMxMDcwLmpwZ3xhYzA1ZDk0N2YzYjc1ZDE0MGQ4ZTc4NjYzZjIwNThmMDFjMjQwZmViYjRkMDNkMzVkMGMwNzA0MWUzZjIxN2Mz",
    category: "Watches",
    brand: "Breitling",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)
Item.create!(
    name: "Breitling Navy",
    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBBx1mVimf5mo0VBLGMrfc-J3lQHc8_aU9xh7fFsQ4BU9JACVeKA",
    category: "Watches",
    brand: "Breitling",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)
Item.create!(
    name: "Breitling Old School",
    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ17VN62rufc1z-t7wXkOjNR3M2y3gi71AqERa219UjqPlqYLN7DA",
    category: "Watches",
    brand: "Breitling",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)
Item.create!(
    name: "Omega MoonWatch",
    photo: "https://www.omegawatches.com/media/gene-cms/s/p/sp_moonwatch_prof_960x720.jpg",
    category: "Watches",
    brand: "Omega",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)
Item.create!(
    name: "Omega Sea Master",
    photo: "https://chronexttime.imgix.net/C/7/C77616/C77616_5aba6855d37c4.jpg?w=800&auto=format&fm=jpg&q=75&usm=30&usmrad=1&h=800&fit=clamp",
    category: "Watches",
    brand: "Omega",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)
Item.create!(
    name: "Blancpain Classic",
    photo: "https://k8q7r7a2.stackpathcdn.com/wp-content/uploads/2018/09/Blancpain-Villeret-M%C3%A9tiers-d%E2%80%99Art-Binchotan-3.jpg",
    category: "Watches",
    brand: "Blancpain",
    description: Faker::Lorem.paragraph,
    address: Faker::Address.full_address,
    price: Faker::Commerce.price(range = 100..500)
)

Item.create!(
     name: "Quilted",
     photo: "https://pmcspy.files.wordpress.com/2018/06/wgadb3091312867_q1_1-0.jpg?w=1000&h=750&crop=1",
     category: "Bags",
     brand: "Chanel",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )


Item.create!(
     name: "Quilted Red",
     photo: "https://a.1stdibscdn.com/archivesE/upload/1121189/v_29945731499754671844/2994573_l.jpg",
     category: "Bags",
     brand: "Chanel",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )
   Item.create!(
     name: "Boy Blue",
     photo: "https://img-static.tradesy.com/item/19574671/chanel-boy-blue-patent-leather-shoulder-bag-0-5-540-540.jpg",
     category: "Bags",
     brand: "Chanel",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )

Item.create!(
     name: "Vuitton Travel",
     photo: "https://stockx.imgix.net/products/handbags/Louis-Vuitton-Pouch-Outdoor-Monogram-Pacific-Small-Brown-Blue.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=auto&trimmd=1&updated_at=1538080256",
     category: "Bags",
     brand: "Vuitton",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )


Item.create!(
     name: "Pochette",
     photo: "https://stockx.imgix.net/products/handbags/Louis-Vuitton-Pochette-Cles-Monogram-Orange-Black.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=auto&trimmd=1&updated_at=1547830678",
     category: "Bags",
     brand: "Vuitton",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )
Item.create!(
     name: "Python",
     photo: "https://stockx.imgix.net/products/handbags/Fendi-Peekaboo-Python-Mini-Green.jpg?fit=fill&bg=FFFFFF&w=700&h=500&auto=format,compress&q=90&dpr=2&trim=auto&trimmd=1&updated_at=1547585496",
     category: "Bags",
     brand: "Fendi",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )


Item.create!(
     name: "Fendi Clutch",
     photo: "https://cdn.theluxurycloset.com/uploads/products/full/luxury-women-fendi-used-handbags-p152593-001.jpg",
     category: "Bags",
     brand: "Fendi",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )
Item.create!(
     name: "Celine Classic",
     photo: "https://img-static.tradesy.com/item/24965317/celine-luggage-micro-with-striped-wings-black-cream-calfskin-leather-tote-0-6-540-540.jpg",
     category: "Bags",
     brand: "Celine",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )


Item.create!(
     name: "Celine Classic",
     photo: "https://cdn.shopify.com/s/files/1/1109/6340/products/CelineNavyLeatherClassicBoxBag.jpg?v=1529357840",
     category: "Bags",
     brand: "Celine",
     description: Faker::Lorem.paragraph,
     address: Faker::Address.full_address,
     price: Faker::Commerce.price(range = 100..500)
   )
