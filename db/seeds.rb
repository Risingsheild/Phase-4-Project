# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding Data"

user1 = User.create(username: "Nick Wells", password: "123")

#-----PLATFORMS-----

PC = PlatForm.create(
    title: "PC"
    image_url: "https://www.pcgamesn.com/wp-content/uploads/2019/02/Best-Gaming-PC.jpg"
)

XBOX = PlatForm.create(
    title: "XBOX"
    image_url: "https://bandwidthblog.co.za/wp-content/uploads/2020/09/xbox-series-x-s-price-south-africa.jpg" 
)

PlayStation = PlatForm.create(
    title: "PlayStation"
    image_url: "https://static.techspot.com/images2/news/bigimage/2020/11/2020-11-06-image-24.jpg"
)

# ----GAMES----
LOL = Game.create(
    title: "League of Legends"
    genre: "Battle Arena"
    image_url: "http://appinformers.com/wp-content/uploads/2017/03/league.png"
)





# ----REVIEWS---


puts "Seeding done"