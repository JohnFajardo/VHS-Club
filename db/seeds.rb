# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create(title: "Lion King", year: 2019, genre: "Adventure")
Movie.create(title: "John Wick: Chapter 2", year: 2017, genre: "Action")
Movie.create(title: "Avengers Endgame", year: 2019, genre: "Sci-Fi")
Movie.create(title: "Black Panther", year: 2018, genre: "Sci-Fi")
Movie.create(title: "It", year: 2017, genre: "Horror")

Customer.create(name: "Petaaa")
Customer.create(name: "John")
Customer.create(name: "Bobby")
