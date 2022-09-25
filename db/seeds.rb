# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Campsites"

cs1 = Campsite.create(
    site: 56
    location: "Deception Pass"
    available: true 
    img: "https://www.campsitephotos.com/photo/camp/44706/Deception_Pass_056.jpg"
)




puts "Seeding done"