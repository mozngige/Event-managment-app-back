# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding Database tables"

puts "Seeding user data"

user1 = User.create(email:"kihahumutagah@gmail.com",password:"codewarleets",is_organiser:false)

user2 = User.create(email:"jeskajenipher@gmail.com",password:"jeskajj19",is_organiser:true)

user3 = User.create(email:"keithwesley@gmail.com",password:"keithwestie13",is_organiser:true)

user4 = User.create(email:"nyalemwasaha@gmail.com",password:"mintnyale23",is_organiser:false)

user5 = User.create(email:"kibirafrancis@gmail.com",password:"francran",is_organiser:false)

puts "Seeding user profile"

user_profile1 = UserProfile.create(user_id:user1.id,full_name:"Kihahu Mutaga",avatar_img: Faker::Avatar.image,phone_number:"0727249154",bio:"Learn rules like a pro and break them like an artist",gender:"male") 

user_profile2 = UserProfile.create(user_id:user2.id,full_name:"Jeska Jenipher",avatar_img: Faker::Avatar.image,phone_number:"07421480348",bio:"Bring your best shot",gender:"female") 

user_profile3 = UserProfile.create(user_id:user3.id,full_name:"Keith Wesley",avatar_img: Faker::Avatar.image, phone_number:"0726842187",bio:"I talk to the future",gender:"male") 

user_profile4 = UserProfile.create(user_id:user4.id,full_name:"Nyale Mwasaha",avatar_img: Faker::Avatar.image, phone_number:"0727979657", bio:"Take memories leave footprints", gender:"male") 

user_profile5 = UserProfile.create(user_id:user5.id,full_name:"Francis Kibira",avatar_img: Faker::Avatar.image, phone_number: "0700595184",bio:"Have fun when you still can have",gender:"male")


puts "End of seeding database tables"