# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding Database tables"

puts "Seeding user data"

user1 = User.create(email:"kihahumutagah@gmail.com",password:"codewarleets")

user2 = User.create(email:"jeskajenipher@gmail.com",password:"jeskajj19")

user3 = User.create(email:"keithwesley@gmail.com",password:"keithwestie13")

user4 = User.create(email:"nyalemwasaha@gmail.com",password:"mintnyale23")

user5 = User.create(email:"kibirafrancis@gmail.com",password:"francran")

puts "End of seeding database"