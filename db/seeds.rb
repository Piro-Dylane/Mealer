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

require "open-uri"

file = URI.open('https://randomuser.me/api/portraits/men/32.jpg')

user1 = User.create(email: "toto@gmail.fr", password: "password", username: "Adam", allergy: "coffee")
user1.photo.attach(io: file, filename: 'random_user.png', content_type: 'image/png')
puts "User 1 created succesfully"
event1 = Event.create(title: "Chez Dylane", date: Date.current, time: Time.now, user_id: user1.id, description: "Grosse soirée")
puts "Event 1 created successfully"
Chatroom.create(event_id:event1.id)
puts "chatroom3 created"

user2 = User.create(email: "titi@gmail.fr", password: "password", username: "Claire", allergy: "meat")
puts "User 2 created succesfully"
user2.photo.attach(io: file, filename: 'random_user.png', content_type: 'image/png')
event2 = Event.create(title: "Chez Claire", date: Date.current, time: Time.now, user_id: user2.id, description: "Big soirée")
puts "Event 2 created successfully"
Chatroom.create(event_id: event2.id)
puts "chatroom2 created"

user3 = User.create(email: "tata@gmail.fr", password: "password", username: "Dylane", allergy: "Laure")
user3.photo.attach(io: file, filename: 'random_user.png', content_type: 'image/png')
puts "User 3 created succesfully"
event3 = Event.create(title: "Chez Adam", date: Date.current, time: Time.now, user_id: user3.id, description: "Night party ")
puts "Event 3 created successfully"
Chatroom.create(event_id: event3.id)
puts "chatroom3 created"

user4 = User.create(email: "tutu@gmail.fr", password: "password", username: "Ben", allergy: "nuts")
user4.photo.attach(io: file, filename: 'random_user.png', content_type: 'image/png')
event4 = Event.create(title: "Chez Ben", date: Date.current, time: Time.now, user_id: user4.id, description: "Soirée grosse")
puts "Event 4 created successfully"
Chatroom.create(event_id: event4.id)
puts "chatroom4 created"


pic_julien = URI.open('https://avatars.githubusercontent.com/u/49597167?v=4')
pic_manu = URI.open('https://avatars.githubusercontent.com/u/83393274?v=4')
pic_sophie = URI.open('https://avatars.githubusercontent.com/u/91194902?v=4')
pic_christophe = URI.open('https://avatars.githubusercontent.com/u/55579654?v=4"')
pic_dylane = URI.open('https://avatars.githubusercontent.com/u/32676281?v=4')
pic_loris = URI.open('https://avatars.githubusercontent.com/u/84146888?v=4')
pic_adam = URI.open('https://avatars.githubusercontent.com/u/61739222?v=4')
pic_clairem = URI.open('https://avatars.githubusercontent.com/u/92371496?v=4')
pic_aurelie = URI.open('https://ca.slack-edge.com/T02NE0241-U02KNAEMNTE-4ec3bea91b16-512')
pic_emilie = URI.open('https://ca.slack-edge.com/T02NE0241-U02KNKK4H4L-879f4f2b9d1e-512')
pic_erika = URI.open('https://ca.slack-edge.com/T02NE0241-U02KKUBPTMK-192e293188a2-512')
pic_georgia = URI.open('https://ca.slack-edge.com/T02NE0241-U02KTBF92QL-38f91ad0859c-512')
pic_guole = URI.open('https://ca.slack-edge.com/T02NE0241-U02KN2773MJ-e59339cdf2d5-512')
pic_isabelle = URI.open('https://ca.slack-edge.com/T02NE0241-U02K48ZTUT1-24e5b0dd5ab6-512')
pic_jessica = URI.open('https://ca.slack-edge.com/T02NE0241-U02KP8RSLTV-0becbbd9b32c-512')
pic_lilia = URI.open(' https://ca.slack-edge.com/T02NE0241-U02KYH1KTKK-8e5e8627af12-512')
pic_jessica = URI.open('https://ca.slack-edge.com/T02NE0241-U02KP8RSLTV-0becbbd9b32c-512')
pic_lucas = URI.open('https://ca.slack-edge.com/T02NE0241-U02KXKLLTFT-445ed7b6e30d-512')
pic_maewenn = URI.open('https://ca.slack-edge.com/T02NE0241-U02K8JY7YLF-f06ce77c6f7f-512')
pic_laure = URI.open('https://ca.slack-edge.com/T02NE0241-U02KP2QHPL2-47c81530099c-512')
pic_sarah = URI.open('https://ca.slack-edge.com/T02NE0241-U02K73C8JHM-g15687c25d4e-512')
pic_sophiew = URI.open('https://ca.slack-edge.com/T02NE0241-U02KPK1FW1Y-b186e47fd6e6-512')
pic_florine = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQF-Wz-dHjht0A/profile-displayphoto-shrink_200_200/0/1561457225126?e=1647475200&v=beta&t=AwX0DSTxkz-_yDfN5t06vW-h0J6jmA9qGYdBPJF8qJg')
pic_clairew = URI.open('https://avatars.githubusercontent.com/u/91942786?v=4')





julien = User.create(email: "julien@gmail.fr", password: "password", username: "Julien", allergy: "nuts")
julien.photo.attach(io: pic_julien, filename: 'julien.png', content_type: 'image/png')

manu = User.create(email: "manu@gmail.fr", password: "password", username: "Manu")
manu.photo.attach(io: pic_manu, filename: 'manu.png', content_type: 'image/png')


aurelie = User.create(email: "aurelie@gmail.fr", password: "password", username: "Aurélie")
aurelie.photo.attach(io: pic_aurelie, filename: 'aurelie.png', content_type: 'image/png')
