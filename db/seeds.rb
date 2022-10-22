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


puts "Seeding events category table"

event_category1 = Category.create(title:"Music",banner_img:"https://img.freepik.com/premium-photo/guitarist-stage-background-soft-blur-concept_34200-251.jpg?w=1800")

event_category2 = Category.create(title:"Business",banner_img:"https://img.freepik.com/premium-psd/business-promotion-corporate-web-banner-template_120329-748.jpg?w=1380")

event_category3 = Category.create(title:"Games",banner_img:"https://img.freepik.com/free-psd/flat-design-video-games-template_23-2149287300.jpg?w=1380&t=st=1666405384~exp=1666405984~hmac=ca774ed95e1223ffa38e863cab0bb5b5f749c0c9d7df009e08b36e9f24712909")

event_category4 = Category.create(title:"Hobbies",banner_img:"https://img.freepik.com/free-vector/set-young-people-with-various-professions_74855-3784.jpg?w=1380&t=st=1666405791~exp=1666406391~hmac=8911666a4b638cebb82a60a50ec0fe4312f0d1d0a3f2b85025f49c342da7e3df")

event_category5 = Category.create(title:"Food & Drink",banner_img:"https://img.freepik.com/free-vector/bio-healthy-food-banner_23-2148852378.jpg?w=1380&t=st=1666405704~exp=1666406304~hmac=d9bb76f60ceb6814c634f432f01e8a4ef216f9d34038a15c0e57cd4c0a7286cf")

event_category6 = Category.create(title:"Performing Arts",banner_img:"https://png.pngtree.com/background/20210709/original/pngtree-passion-concert-background-picture-image_480410.jpg")

event_category7 = Category.create(title:"Sciences",banner_img:"https://png.pngtree.com/background/20211215/original/pngtree-real-shot-laboratory-do-experiment-test-tube-plus-pharmacy-science-biochemistry-picture-image_1475609.jpg")

event_category8 = Category.create(title:"Sport & Fitness",banner_img:"https://img.freepik.com/free-psd/sport-tech-social-media-post-template_23-2148523619.jpg?w=1380&t=st=1666406214~exp=1666406814~hmac=d4dcedec12b55d94f4828c85f98e6d3a7a86022db951fc0532c1009e942d7c04")


puts "Seeding user profile"

user_profile1 = UserProfile.create(user_id:user1.id,full_name:"Kihahu Mutaga",avatar_img: Faker::Avatar.image,phone_number:"0727249154",bio:"Learn rules like a pro and break them like an artist",gender:"male") 

user_profile2 = UserProfile.create(user_id:user2.id,full_name:"Jeska Jenipher",avatar_img: Faker::Avatar.image,phone_number:"07421480348",bio:"Bring your best shot",gender:"female") 

user_profile3 = UserProfile.create(user_id:user3.id,full_name:"Keith Wesley",avatar_img: Faker::Avatar.image, phone_number:"0726842187",bio:"I talk to the future",gender:"male") 

user_profile4 = UserProfile.create(user_id:user4.id,full_name:"Nyale Mwasaha",avatar_img: Faker::Avatar.image, phone_number:"0727979657", bio:"Take memories leave footprints", gender:"male") 

user_profile5 = UserProfile.create(user_id:user5.id,full_name:"Francis Kibira",avatar_img: Faker::Avatar.image, phone_number: "0700595184",bio:"Have fun when you still can have",gender:"male")

puts "End of seeding database tables"