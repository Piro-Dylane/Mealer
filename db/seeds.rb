# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Suggestion.destroy_all
Item.destroy_all
Member.destroy_all
Category.destroy_all
Message.destroy_all
Chatroom.destroy_all
Event.destroy_all
puts "Events deleted successfully"
User.destroy_all
puts "Users deleted successfully"




puts "User deleted successfully"



user1 = User.create(email: "toto@gmail.fr", password: "password", username: "toto")

puts "User 1 created succesfully"


event1 = Event.create(title: "Chez Ben", date: Date.current, time: Time.now, user_id: user1.id , description:"Grosse soirée")

Event.create(title: "Chez Ben", date: Date.current, time: Time.now, user_id: user1.id, description: "Grosse soirée")


puts "Event 1 created successfully"
Chatroom.create(event_id:event1.id )
puts"chatroom3 creer"


user2 = User.create(email: "titi@gmail.fr", password: "password", username: "titi")

puts "User 2 created succesfully"

event2 = Event.create(title: "Chez Claire", date: Date.current, time: Time.now, user_id: user2.id, description:"Big soirée")

puts "Event 2 created successfully"
Chatroom.create(event_id:event2.id )
puts"chatroom2 creer"

user3 = User.create(email: "tata@gmail.fr", password: "password", username: "tata")

puts "User 3 created succesfully"

event3 = Event.create(title: "Chez Adam", date: Date.current, time: Time.now, user_id: user3.id, description:"Night party ")

puts "Event 3 created successfully"
Chatroom.create(event_id:event3.id )
puts"chatroom3 creer"
