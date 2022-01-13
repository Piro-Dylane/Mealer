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
pic_lilia = URI.open('https://ca.slack-edge.com/T02NE0241-U02KYH1KTKK-8e5e8627af12-512')
pic_lucas = URI.open('https://ca.slack-edge.com/T02NE0241-U02KXKLLTFT-445ed7b6e30d-512')
pic_maewenn = URI.open('https://ca.slack-edge.com/T02NE0241-U02K8JY7YLF-f06ce77c6f7f-512')
pic_laure = URI.open('https://ca.slack-edge.com/T02NE0241-U02KP2QHPL2-47c81530099c-512')
pic_sarah = URI.open('https://ca.slack-edge.com/T02NE0241-U02K73C8JHM-g15687c25d4e-512')
pic_sophiew = URI.open('https://ca.slack-edge.com/T02NE0241-U02KPK1FW1Y-b186e47fd6e6-512')
pic_florine = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQF-Wz-dHjht0A/profile-displayphoto-shrink_200_200/0/1561457225126?e=1647475200&v=beta&t=AwX0DSTxkz-_yDfN5t06vW-h0J6jmA9qGYdBPJF8qJg')
pic_clairew = URI.open('https://avatars.githubusercontent.com/u/91942786?v=4')
pic_ilhem = URI.open('https://avatars.githubusercontent.com/u/92375963?v=4')
pic_ben = File.open('app/assets/images/ben.png')

julien = User.create(email: "julien@gmail.fr", password: "password", username: "Julien", allergy: "nuts")
julien.photo.attach(io: pic_julien, filename: 'julien.png', content_type: 'image/png')

manu = User.create(email: "manu@gmail.fr", password: "password", username: "Manu")
manu.photo.attach(io: pic_manu, filename: 'manu.png', content_type: 'image/png')

ben = User.create(email: "ben@gmail.fr", password: "password", username: "Benji")
ben.photo.attach(io: pic_ben, filename: 'ben.png', content_type: 'image/png')

sophie = User.create(email: "sophie@gmail.fr", password: "password", username: "Sophie")
sophie.photo.attach(io: pic_sophie, filename: 'sophie.png', content_type: 'image/png')

christophe = User.create(email: "christophe@gmail.fr", password: "password", username: "Cricri")
christophe.photo.attach(io: pic_christophe, filename: 'christophe.png', content_type: 'image/png')

dylane = User.create(email: "dylane@gmail.fr", password: "password", username: "Dydy")
dylane.photo.attach(io: pic_dylane, filename: 'dylane.png', content_type: 'image/png')

loris = User.create(email: "loris@gmail.fr", password: "password", username: "Lolo")
loris.photo.attach(io: pic_loris, filename: 'loris.png', content_type: 'image/png')

adam = User.create(email: "adam@gmail.fr", password: "password", username: "Adam", allergy: "coffee")
adam.photo.attach(io: pic_adam, filename: 'adam.png', content_type: 'image/png')

clairem = User.create(email: "claire@gmail.fr", password: "password", username: "Claire")
clairem.photo.attach(io: pic_clairem, filename: 'claire.png', content_type: 'image/png')

aurelie = User.create(email: "aurelie@gmail.fr", password: "password", username: "Aurélie")
aurelie.photo.attach(io: pic_aurelie, filename: 'aurelie.png', content_type: 'image/png')

emilie = User.create(email: "emilie@gmail.fr", password: "password", username: "Emilie")
emilie.photo.attach(io: pic_emilie, filename: 'emilie.png', content_type: 'image/png')

erika = User.create(email: "erika@gmail.fr", password: "password", username: "Erika")
erika.photo.attach(io: pic_erika, filename: 'erika.png', content_type: 'image/png')

georgia = User.create(email: "georgia@gmail.fr", password: "password", username: "Georgia")
georgia.photo.attach(io: pic_georgia, filename: 'georgia.png', content_type: 'image/png')

guole = User.create(email: "guole@gmail.fr", password: "password", username: "Lele")
guole.photo.attach(io: pic_guole, filename: 'guole.png', content_type: 'image/png')

isabelle = User.create(email: "isabelle@gmail.fr", password: "password", username: "Isabelle")
isabelle.photo.attach(io: pic_isabelle, filename: 'Isabelle.png', content_type: 'image/png')

jessica = User.create(email: "jessica@gmail.fr", password: "password", username: "Jess")
jessica.photo.attach(io: pic_jessica, filename: 'jessica.png', content_type: 'image/png')

lilia = User.create(email: "lilia@gmail.fr", password: "password", username: "Lilia")
lilia.photo.attach(io: pic_lilia, filename: 'lilia.png', content_type: 'image/png')

lucas = User.create(email: "lucas@gmail.fr", password: "password", username: "Lucas")
lucas.photo.attach(io: pic_lucas, filename: 'lucas.png', content_type: 'image/png')

maewenn = User.create(email: "maewenn@gmail.fr", password: "password", username: "Maewenn")
maewenn.photo.attach(io: pic_maewenn, filename: 'maewenn.png', content_type: 'image/png')

laure = User.create(email: "laure@gmail.fr", password: "password", username: "Laure")
laure.photo.attach(io: pic_laure, filename: 'laure.png', content_type: 'image/png')

sarah = User.create(email: "sarah@gmail.fr", password: "password", username: "Lucas")
sarah.photo.attach(io: pic_sarah, filename: 'sarah.png', content_type: 'image/png')

sophiew = User.create(email: "sosophie@gmail.fr", password: "password", username: "Sophie")
sophiew.photo.attach(io: pic_sophiew, filename: 'sophiew.png', content_type: 'image/png')

florine = User.create(email: "florine@gmail.fr", password: "password", username: "Floflo")
florine.photo.attach(io: pic_florine, filename: 'lucas.png', content_type: 'image/png')

clairew = User.create(email: "claireclaire@gmail.fr", password: "password", username: "Claire")
clairew.photo.attach(io: pic_clairew, filename: 'clairew.png', content_type: 'image/png')

ilhem = User.create(email: "ilhem@gmail.fr", password: "password", username: "Lucas")
ilhem.photo.attach(io: pic_ilhem, filename: 'ilhem.png', content_type: 'image/png')

puts "Users created succesfully"

pic_wagon = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,h_240,q_auto,w_520/v1630589589/uw1ptlkpy1g7i7ske4uv.webp')
wagon_party = Event.create(title: "Fête Wagon", date: Date.current + 2, time: Time.now, user_id: clairem.id, description: "Fêtons la fin de la formation")
wagon_party.photo.attach(io: pic_wagon, filename: 'wagon.png', content_type: 'image/png')
Chatroom.create(event_id: wagon_party.id)
Member.create(user: clairem, event: wagon_party)
Member.create(user: julien, event: wagon_party)
Member.create(user: manu, event: wagon_party)
Member.create(user: sophie, event: wagon_party)
Member.create(user: christophe, event: wagon_party)
Member.create(user: dylane, event: wagon_party)
Member.create(user: loris, event: wagon_party)
Member.create(user: adam, event: wagon_party)
Member.create(user: aurelie, event: wagon_party)
Member.create(user: emilie, event: wagon_party)
Member.create(user: erika, event: wagon_party)
Member.create(user: guole, event: wagon_party)
Member.create(user: isabelle, event: wagon_party)
Member.create(user: lilia, event: wagon_party)
Member.create(user: lucas, event: wagon_party)
Member.create(user: maewenn, event: wagon_party)
Member.create(user: sarah, event: wagon_party)
Member.create(user: sophiew, event: wagon_party)
Member.create(user: florine, event: wagon_party)
Member.create(user: clairew, event: wagon_party)
Member.create(user: ilhem, event: wagon_party)
Member.create(user: ben, event: wagon_party)
Member.create(user: jessica, event: wagon_party)
Member.create(user: georgia, event: wagon_party)
Member.create(user: laure, event: wagon_party)

puts "Wagon event (members and chatroom) created succesfully"

file = URI.open('https://randomuser.me/api/portraits/men/32.jpg')

event1 = Event.create(title: "British party", date: Date.current, time: Time.now, user_id: adam.id, description: "Let's party london style")
# event1.photo.attach(io: , filename: 'event1.png', content_type: 'image/png')
Chatroom.create(event_id: event1.id)
Member.create(user: adam, event: event1)
Member.create(user: erika, event: event1)
Member.create(user: lucas, event: event1)
puts "Event 1 (members and chatroom) created successfully"

event2 = Event.create(title: "Kebab night", date: Date.current + 30, time: Time.now, user_id: ben.id, description: "Dégustation des meilleurs kebabs de Marseille")
Chatroom.create(event_id: event2.id)
Member.create(user: ben, event: event2)
Member.create(user: christophe, event: event2)
Member.create(user: julien, event: event2)
Member.create(user: sophiew, event: event2)
puts "Event 2 (members and chatroom) created successfully"

event3 = Event.create(title: "Chez Dylane", date: Date.current + 10, time: Time.now, user_id: dylane.id, description: "Big teuf")
Chatroom.create(event_id: event3.id)
Member.create(user: dylane, event: event3)
Member.create(user: laure, event: event3)

puts "Event 3 (members and chatroom) created successfully"

event4 = Event.create(title: "Bday party", date: Date.current + 8, time: Time.now, user_id: clairem.id, description: "twenty-eeeeeeight")
Member.create(user: clairem, event: event4)
Member.create(user: dylane, event: event4)
Member.create(user: ben, event: event4)
Member.create(user: adam, event: event4)
Member.create(user: erika, event: event4)
Member.create(user: loris, event: event4)
Member.create(user: sarah, event: event4)
Member.create(user: guole, event: event4)
Member.create(user: florine, event: event4)

Chatroom.create(event_id: event4.id)
puts "Event 4 (members and chatroom) created successfully"
