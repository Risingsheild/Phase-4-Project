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

pc = PlatForm.create(
    title: "PC",
    image_url: "https://www.pcgamesn.com/wp-content/uploads/2019/02/Best-Gaming-PC.jpg"
)

xbox = PlatForm.create(
    title: "XBOX",
    image_url: "https://bandwidthblog.co.za/wp-content/uploads/2020/09/xbox-series-x-s-price-south-africa.jpg"
)

playstation = PlatForm.create(
    title: "PlayStation",
    image_url: "https://static.techspot.com/images2/news/bigimage/2020/11/2020-11-06-image-24.jpg"
)

# ----GAMES----

LOL = Game.create(
    title: "League of Legends",
    genre: "Battle Arena",
    image_url: "http://appinformers.com/wp-content/uploads/2017/03/league.png",
    platform_id: pc.id
)

Halo = Game.create(
    title: "Halo",
    genre: "Action-Adventure",
    image_url: "https://static.trueachievements.com/customimages/039459.jpg",
    platform_id: xbox.id
)

Gow = Game.create(
    title: "God of War",
    genre: "Action-Adventure",
    image_url: "https://i2.wp.com/wallpapersfortech.com/wp-content/uploads/2018/04/241B3EAB-771D-4D3B-AB6B-841C6BBF4C8F.jpeg?ssl=1",
    platform_id: playstation
)

LostArk = Game.create(
    title: "Lost Ark",
    genre: "Adventure"
    image_url: "https://pbs.twimg.com/profile_images/984648091876732928/pLphONCS_400x400.jpg"
    platform_id: pc.id
)

Gears5 = Game.create(
    title: "Gears 5"
    genre: "Third Person Shooter"
    image_url: "https://cdn.wccftech.com/wp-content/uploads/2019/01/gears5_logo.jpg"
    platform_id: xbox.id
)

Horizon = Game.create(
    title: "Horizon Forbidden West"
    genre: "Action Role Playing"
    image_url: "https://miro.medium.com/max/1080/1*2J3OLrKHjAS_5Y1PigCYsQ.jpeg"
    platform_id: playstation.id
)


# ----REVIEWS---

review1 = Review.create(
    comment: "Played many of hours and has consitent updates to keep it fun and new"
    user_id: user1.id
    game_id: LOL.id
)


puts "Seeding done"