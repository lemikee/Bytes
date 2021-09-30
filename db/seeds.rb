# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#users

User.destroy_all
City.destroy_all
Cuisine.destroy_all
Review.destroy_all
Business.destroy_all

business1 = Business.create!({
  business_name: 'App Academy',
  cuisine_id: 4,
  address: '825 Battery St',
  city_id: 6,
  zip_code: 94111,
  state: 'CA',
  hours: '8AM-10PM',
  description: "Since App Academy started in 2012, we've consistently been regarded as one of the best coding bootcamps in the world by students and employers.",
  long: 10,
  lat: 10
})

user1 = User.create!({
  email:"hire@me.com",
  password: "password",
  first_name:"Hire",
  last_name:"Me",
  zip_code: 94720
})

city1 = City.create!({
  city: "San Francisco"
})

cuisine1 = Cuisine.create!({
  cuisine: "Sadness"
})

review1 = Review.create!({
  content: 'App Academy',
  rating: 5,
  user_id: 1,
  business_id: 1
})
