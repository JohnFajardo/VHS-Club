# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Customer.destroy_all

Customer.create(name: "Petaaa", username: "peter@gmail.com", password: "peterpass")
Customer.create(name: "John", username: "john@gmail.com", password: "johnpass")
Customer.create(name: "Bobby", username: "bobby@gmail.com", password: "bobbypass")
