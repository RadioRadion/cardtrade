# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new(email: "tony@botmail.com", password: "azerty", username:"tonygland")
    u.save!

User.new(email: "vito@botmail.com", password: "azerty", username:"vitogland").save!
User.new(email: "bernardo@botmail.com", password: "azerty", username:"bernardoland").save!

Chatroom.new(name: "Famillegland").save!
