# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Crearting Event..."

event1 = Event.create(
    name: "Football Game"
    description: "Seahawks vs Falcons"
    time: "Sun Sept 25th, 1:25PM"
)

event2 = Event.create(
    name: "Soccer Game"
    description: "Sounders vs Cincinnati"
    time: "Tues Sept 27th, 7:00PM"
)

event3 = Event.create(
    name: "Football Game"
    description: "Seahawks vs Falcons"
    time: "1:25PM"
)




puts "Seeding done"