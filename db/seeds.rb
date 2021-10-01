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

user1 = User.create!({
  email:"hire@me.com",
  password: "password",
  first_name:"Hire",
  last_name:"Me",
  zip_code: 94720
})

cat1 = Category.create(name: "Breakfast")
cat2 = Category.create(name: "Lunch")
cat3 = Category.create(name: "Dinner")
cat4 = Category.create(name: "Seafood")
cat5 = Category.create(name: "Asian")
cat6 = Category.create(name: "Asian Fusion")
cat7 = Category.create(name: "Mexican")
cat8 = Category.create(name: "Italian")
cat9 = Category.create(name: "American")

business1 = Business.create(business_name: "Fog Harbor Fish House", address: "Pier 39 Ste A-202", city: "San Francisco", state: "CA", zip_code: "94133", latitude: 37.80964, longitude: -122.41025, phone: "(415) 421-2442", website: "fogharbor.com", price: '$$')
business2 = Business.create(business_name: "Marufuku Ramen", address: "1581 Webster St", city: "San Francisco", state: "CA", zip_code: "94115", latitude: 37.78537, longitude: -122.43146, phone: "(415) 872-9786", website: "marufukuramen.com", price: '$$')
business3 = Business.create(business_name: "The House", address: "1230 Grant Ave", city: "San Francisco", state: "CA", zip_code: "94133", latitude: 37.797952, longitude: -122.407148, phone: "(415) 986-8612", website: "thehse.com", price: '$$$')

Review.create(business_id: business1.id, user_id: user1.id, rating: 5, body: "Had the best dinner here!! It is right off the pier with great views of the city, the bay, and most importantly, the Golden Gate Bridge! Make sure to get reservations and ask for a seat by the window to get a great sunset view at dinner.")

BusinessCategory.create(business_id: business1.id, category_id: cat3.id)
