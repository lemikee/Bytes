# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#users

User.destroy_all
Business.destroy_all
Review.destroy_all
Category.destroy_all
BusinessCategory.destroy_all

# business1 = Business.create!({
#   business_name: 'App Academy',
#   cuisine_id: 4,
#   address: '825 Battery St',
#   city_id: 6,
#   zip_code: 94111,
#   state: 'CA',
#   hours: '8AM-10PM',
#   description: "Since App Academy started in 2012, we've consistently been regarded as one of the best coding bootcamps in the world by students and employers.",
#   long: 10,
#   lat: 10
# })

demo = User.create!({
  email:"hire@me.com",
  password: "password",
  first_name:"Hire",
  last_name:"Me",
  zip_code: 94720
})

demo = User.create(first_name: 'Demo', last_name: 'User', email: 'noemail@email.com', password: 'password', zip_code: '94018')
user1 = User.create(first_name: 'Not Mike', last_name: 'Le', email: 'mary123@mail.com', password: 'password', zip_code: '94012')
user2 = User.create(first_name: 'Darrick', last_name: 'Shin', email: 'mikesmith@mail.com', password: 'password', zip_code: '94016')
user3 = User.create(first_name: 'Jessica', last_name: 'Jones', email: 'jessicaaaaaa@mail.com', password: 'password', zip_code: '94013')
user4 = User.create(first_name: 'Serena', last_name: 'Williams', email: 'ilovetennis@mail.com', password: 'password', zip_code: '94014')
user5 = User.create(first_name: 'Joe', last_name: 'Bruin', email: 'bearbearbear@mail.com', password: 'password', zip_code: '90024')
user6 = User.create(first_name: 'Jimmy', last_name: 'Kuang', email: 'mercerindisguise@mail.com', password: 'password', zip_code: '90210')
user7 = User.create(first_name: 'Finn', last_name: 'Human', email: 'jakethedog@mail.com', password: 'password', zip_code: '94015')
user8 = User.create(first_name: 'Wilson', last_name: 'Coconut', email: 'imlost@mail.com', password: 'password', zip_code: '94019')
user9 = User.create(first_name: 'Sam', last_name: 'Dude', email: 'bobthesponge@mail.com', password: 'password', zip_code: '94017')
user10 = User.create(first_name: 'Elaine', last_name: 'Wong', email: 'tofurkey@mail.com', password: 'password', zip_code: '91001')
user11 = User.create(first_name: 'Albert', last_name: 'Coulson', email: 'pianoman@mail.com', password: 'password', zip_code: '94133')
user12 = User.create(first_name: 'Vern', last_name: 'Chao', email: 'flowersaregreat@mail.com', password: 'password', zip_code: '94105')
user13 = User.create(first_name: 'Jackie', last_name: 'Jung', email: 'idokungfu@mail.com', password: 'password', zip_code: '94019')
user14 = User.create(first_name: 'Ryan', last_name: 'Chan', email: 'eateateatme@mail.com', password: 'password', zip_code: '94012')
user15 = User.create(first_name: 'Elizabeth', last_name: 'Bennett', email: 'bookgal13@mail.com', password: 'password', zip_code: '94011')
user16 = User.create(first_name: 'Ben', last_name: 'Stiller', email: 'moviesallday@mail.com', password: 'password', zip_code: '90024')
user17 = User.create(first_name: 'Logan', last_name: 'Clarke', email: 'supesnotsuits@mail.com', password: 'password', zip_code: '90025')
user18 = User.create(first_name: 'John', last_name: 'Doe', email: 'mranderson@mail.com', password: 'password', zip_code: '91733')
user19 = User.create(first_name: 'Jane', last_name: 'Doe', email: 'bestseatsinthehouse@mail.com', password: 'password', zip_code: '91732')
user20 = User.create(first_name: 'Jake', last_name: 'Carter', email: 'someguy11@mail.com', password: 'password', zip_code: '91731')
user21 = User.create(first_name: 'Thomas', last_name: 'Ward', email: 'yoursmileiscute@mail.com', password: 'password', zip_code: '94012')
user22 = User.create(first_name: 'Catherine', last_name: 'Simmons', email: 'persimmon@mail.com', password: 'password', zip_code: '90211')
user23 = User.create(first_name: 'Hannah', last_name: 'Foster', email: 'fosterlove@mail.com', password: 'password', zip_code: '90024')
user24 = User.create(first_name: 'Sofia', last_name: 'Perez', email: 'sofiathegreat@mail.com', password: 'password', zip_code: '94133')
user25 = User.create(first_name: 'Quyen', last_name: 'Tran', email: 'qtpie@mail.com', password: 'password', zip_code: '94132')

demo.photo.attach(io: File.open('./app/assets/images/user/demo.png'), filename: 'demo.png')
user1.photo.attach(io: File.open('./app/assets/images/user/user1.jpg'), filename: 'user1.jpg')
user2.photo.attach(io: File.open('./app/assets/images/user/user2.jpg'), filename: 'user2.jpg')
user3.photo.attach(io: File.open('./app/assets/images/user/user3.jpg'), filename: 'user3.jpg')
user4.photo.attach(io: File.open('./app/assets/images/user/user4.jpg'), filename: 'user4.jpg')
user5.photo.attach(io: File.open('./app/assets/images/user/user5.jpg'), filename: 'user5.jpg')
user6.photo.attach(io: File.open('./app/assets/images/user/user6.jpg'), filename: 'user6.jpg')
user7.photo.attach(io: File.open('./app/assets/images/user/user7.jpg'), filename: 'user7.jpg')
user8.photo.attach(io: File.open('./app/assets/images/user/user8.jpg'), filename: 'user8.jpg')
user9.photo.attach(io: File.open('./app/assets/images/user/user9.jpg'), filename: 'user9.jpg')
user10.photo.attach(io: File.open('./app/assets/images/user/user10.jpeg'), filename: 'user10.jpeg')
user11.photo.attach(io: File.open('./app/assets/images/user/user11.jpg'), filename: 'user11.jpg')
user12.photo.attach(io: File.open('./app/assets/images/user/user12.jpg'), filename: 'user12.jpg')
user13.photo.attach(io: File.open('./app/assets/images/user/user13.jpg'), filename: 'user13.jpg')
user14.photo.attach(io: File.open('./app/assets/images/user/user14.jpg'), filename: 'user14.jpg')
user15.photo.attach(io: File.open('./app/assets/images/user/user15.jpg'), filename: 'user15.jpg')
user16.photo.attach(io: File.open('./app/assets/images/user/user16.jpg'), filename: 'user16.jpg')
user17.photo.attach(io: File.open('./app/assets/images/user/user17.jpg'), filename: 'user17.jpg')
user18.photo.attach(io: File.open('./app/assets/images/user/user18.jpg'), filename: 'user18.jpg')
user19.photo.attach(io: File.open('./app/assets/images/user/user19.jpg'), filename: 'user19.jpg')
user20.photo.attach(io: File.open('./app/assets/images/user/user20.png'), filename: 'user20.png')
user21.photo.attach(io: File.open('./app/assets/images/user/user21.jpg'), filename: 'user21.jpg')
user22.photo.attach(io: File.open('./app/assets/images/user/user22.jpg'), filename: 'user22.jpg')
user23.photo.attach(io: File.open('./app/assets/images/user/user23.jpg'), filename: 'user23.jpg')
user24.photo.attach(io: File.open('./app/assets/images/user/user24.jpg'), filename: 'user24.jpg')
user25.photo.attach(io: File.open('./app/assets/images/user/user25.jpg'), filename: 'user25.jpg')

business1 = Business.create(business_name: "App Academy", address: "825 Battery St, San Francisco, CA 94111", city: "San Francisco", state: "CA", zip_code: "94111", latitude: 37.80964, longitude: -122.41025, phone: "(415) 417-1991", website: "https://www.appacademy.io/", price: '$$$$')
business2 = Business.create(business_name: "Cafe 3", address: "123 Apple St", city: "San Francisco", state: "CA", zip_code: "94111", latitude: 37.78537, longitude: -122.43146, phone: "(415) 111-1111", website: "HireMePls.com", price: '$$')

business1.photo.attach(io: File.open('./app/assets/images/business/1-fog/fog1.jpg'), filename: 'fog1-1.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog1.jpg'), filename: 'fog1.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog2.jpg'), filename: 'fog2.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog3.jpg'), filename: 'fog3.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog4.jpg'), filename: 'fog4.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog5.jpg'), filename: 'fog5.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog6.jpg'), filename: 'fog6.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog7.jpg'), filename: 'fog7.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog8.jpg'), filename: 'fog8.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog9.jpg'), filename: 'fog9.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog10.jpg'), filename: 'fog10.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog11.jpg'), filename: 'fog11.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog12.jpg'), filename: 'fog12.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog13.jpg'), filename: 'fog13.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog14.jpg'), filename: 'fog14.jpg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-fog/fog15.jpg'), filename: 'fog15.jpg')

business2.photo.attach(io: File.open('./app/assets/images/business/2-maru/maru1.jpg'), filename: 'maru1-1.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru1.jpg'), filename: 'maru1.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru2.jpg'), filename: 'maru2.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru3.jpg'), filename: 'maru3.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru4.jpg'), filename: 'maru4.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru5.jpg'), filename: 'maru5.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru6.jpg'), filename: 'maru6.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru7.jpg'), filename: 'maru7.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru8.jpg'), filename: 'maru8.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru9.jpg'), filename: 'maru9.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru10.jpg'), filename: 'maru10.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru11.jpg'), filename: 'maru11.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru12.jpg'), filename: 'maru12.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru13.jpg'), filename: 'maru13.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru14.jpg'), filename: 'maru14.jpg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-maru/maru15.jpg'), filename: 'maru15.jpg')

Review.create(business_id: business1.id, user_id: user1.id, rating: 5, body: "This project is brought to you by App Academy")
Review.create(business_id: business1.id, user_id: user6.id, rating: 3, body: "I give a/A and A+")
Review.create(business_id: business1.id, user_id: user9.id, rating: 4, body: "10/10")
Review.create(business_id: business1.id, user_id: user12.id, rating: 4, body: "The kahoots are really fun!")
Review.create(business_id: business1.id, user_id: user18.id, rating: 3, body: "NO LOLLYGAGG")


Review.create(business_id: business2.id, user_id: user4.id, rating: 5, body: "It's better than your code working.")
Review.create(business_id: business2.id, user_id: user5.id, rating: 4, body: "Best ramen in SF. The wait is long. We went for lunch and got on the waitlist, but still had to wait around 45 min. Broth was amazing and the egg was cooked perfectly. Definitely recommend this place.")
Review.create(business_id: business2.id, user_id: user6.id, rating: 2, body: "This is the saltiest Ramen we've ever had. My tongue still hurts. Got the special DX sizzling chicken. Chicken was hard and dry. Not sure if it was an off day, but none of the people in my group liked their food.")
Review.create(business_id: business2.id, user_id: user7.id, rating: 5, body: "Definitely the best ramen place I've been to in a long time i would have gotten the pork belly bun small bites (MarufukuBites) but was in a rush to go see a movie. It is located on the second floor of the far western building of Japantown near the theaters.")
Review.create(business_id: business2.id, user_id: user10.id, rating: 4, body: "Was the ramen really good? Yeah. Was it the best ramen I've had in SF? Probably. Was it the best in the Bay Area? Meh. I think there are definitely better ramen spots if you travel outside of SF. Marufuku just makes a solid bowl of ramen, which is pretty much standard fare for anywhere in Japan. There wasn't anything particularly special about it that makes me want to come back and battle the wait time again.")
Review.create(business_id: business2.id, user_id: user11.id, rating: 4, body: "Came here on a Sunday around opening time in hopes of not having to wait for very long, but still ended up having to put my name on a waitlist. Fortunately, we didn't have to wait too long and were seated within 30 mins. Overall, a good bowl of ramen! Would definitely be worth the wait (if the wait isn't too long).")



cat1 = Category.create(name: "Breakfast")
cat2 = Category.create(name: "Lunch")
cat3 = Category.create(name: "Dinner")
cat4 = Category.create(name: "Seafood")
cat5 = Category.create(name: "Asian")
cat6 = Category.create(name: "Asian Fusion")
cat7 = Category.create(name: "Mexican")
cat8 = Category.create(name: "Italian")
cat9 = Category.create(name: "American")


BusinessCategory.create(business_id: business1.id, category_id: cat3.id)
BusinessCategory.create(business_id: business1.id, category_id: cat4.id)
BusinessCategory.create(business_id: business2.id, category_id: cat3.id)
BusinessCategory.create(business_id: business2.id, category_id: cat5.id)

