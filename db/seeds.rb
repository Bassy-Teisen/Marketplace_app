# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

profile = [
    {name: "Captian Cook", rating: 5, owner: true},
    {name: "Jack Sparrow", rating: 5, owner: true},
    {name: "Jonny Bravo", rating: 1, owner: false},
    {name: "Goku", rating: 4, owner: false}
]

# Profile.create()

Profile.destroy_all
Profile.create!(profile)