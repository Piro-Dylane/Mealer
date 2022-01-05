# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
puts "Events deleted successfully"
User.destroy_all
puts "Users deleted successfully"



user1 = User.create(email: "toto@gmail.fr", password: "password", username: "toto")

puts "User 1 created succesfully"

Event.create(title: "Chez Ben", date: Date.current, time: Time.now, user_id: user1.id, description: "Grosse soirée")

puts "Event 1 created successfully"

user2 = User.create(email: "titi@gmail.fr", password: "password", username: "titi")

puts "User 2 created succesfully"

Event.create(title: "Chez Claire", date: Date.current, time: Time.now, user_id: user2.id, description:"Big soirée")

puts "Event 2 created successfully"

user3 = User.create(email: "tata@gmail.fr", password: "password", username: "tata")

puts "User 3 created succesfully"

Event.create(title: "Chez Adam", date: Date.current, time: Time.now, user_id: user3.id, description:"Night party ")

puts "Event 3 created successfully"
