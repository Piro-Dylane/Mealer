# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(email: 'toto@gmail.com', password: 'azerty', username: 'toto')
user1.save
event1 = Event.new(title: '2022 party', date: Date.today + 6.days, time: Time.now, description: 'this is a descritpion', user_id: '2')
event1.save
