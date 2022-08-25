# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


wedding = Event.create(name: "Wedding")
Event.create(name:"Wedding", parent_id: wedding.id)
Event.create(name:"Sangeet", parent_id: wedding.id)
Event.create(name:"Reception", parent_id: wedding.id)
Event.create(name:"Engagement", parent_id: wedding.id)
Event.create(name:"Bachelorette Party", parent_id: wedding.id)
Event.create(name:"Destination Weddings", parent_id: wedding.id)
Event.create(name:"Bridal Shower", parent_id: wedding.id)

party = Event.create(name: "Parties")
Event.create(name:"Birthday", parent_id: party.id)
Event.create(name:"Get-Together", parent_id: party.id)
Event.create(name:"Anniversary", parent_id: party.id)
Event.create(name:"Graduation", parent_id: party.id)
Event.create(name:"Kitty", parent_id: party.id)
Event.create(name:"Fresher's", parent_id: party.id)
Event.create(name:"Halloween", parent_id: party.id)

corporate = Event.create(name: "Corporate")
Event.create(name:"Team-Building", parent_id: corporate.id)
Event.create(name:"Farewell", parent_id: corporate.id)
Event.create(name:"Annual Day", parent_id: corporate.id)
Event.create(name:"Employee meet", parent_id: corporate.id)

festive = Event.create(name: "Festive Parties")
Event.create(name:"New Year Party", parent_id: festive.id)
Event.create(name:"Diwali Party", parent_id: festive.id)
Event.create(name:"Christmas Party", parent_id: festive.id)
Event.create(name:"Holi Party", parent_id: festive.id)
