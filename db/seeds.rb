# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#  Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Business.destroy_all
Review.destroy_all
Category.destroy_all
BusinessCategory.destroy_all

demo = User.create!({
                      email: 'hire@me.com',
                      password: 'password',
                      first_name: 'Hire',
                      last_name: 'Me',
                      zip_code: 94_720
                    })

user1 = User.create(first_name: 'Yu-Huan', last_name: 'Wu', email: 'yuhuan@me.com', password: 'password',
                    zip_code: '94101')
user2 = User.create(first_name: 'Darrick', last_name: 'Shin', email: 'darrick@me.com', password: 'password',
                    zip_code: '94102')
user3 = User.create(first_name: 'Alex', last_name: 'Crooks', email: 'alex@me.com', password: 'password',
                    zip_code: '94110')
user4 = User.create(first_name: 'Arwen', last_name: 'Kim', email: 'arwen@me.com', password: 'password',
                    zip_code: '94015')
user5 = User.create(first_name: 'Ian', last_name: 'McGrath', email: 'ian@me.com', password: 'password',
                    zip_code: '94530')
user6 = User.create(first_name: 'Vincent', last_name: 'Hsu', email: 'vincent@me.com', password: 'password',
                    zip_code: '90503')
user7 = User.create(first_name: 'Jason', last_name: 'Kim', email: 'jason@me.com', password: 'password',
                    zip_code: '94118')
user8 = User.create(first_name: 'Jimmy', last_name: 'Kuang', email: 'jimmy@me.com', password: 'password',
                    zip_code: '90001')
user9 = User.create(first_name: 'Josh', last_name: 'Zhao', email: 'josh@me.com', password: 'password',
                    zip_code: '90504')
user10 = User.create(first_name: 'Jim', last_name: 'Nardi', email: 'jim@me.com', password: 'password',
                     zip_code: '91001')
user11 = User.create(first_name: 'Danny', last_name: 'Park', email: 'danny@me.com', password: 'password',
                     zip_code: '10001')
user12 = User.create(first_name: 'Vern', last_name: 'Chao', email: 'vern@me.com', password: 'password',
                     zip_code: '52862')
user13 = User.create(first_name: 'Joey', last_name: 'Fernandez', email: 'joey@me.com', password: 'password',
                     zip_code: '18593')
user14 = User.create(first_name: 'Josh', last_name: 'Kim-Biggs', email: 'joshkb@me.com', password: 'password',
                     zip_code: '96282')
user15 = User.create(first_name: 'Kenny', last_name: 'La', email: 'kenny@me.com', password: 'password',
                     zip_code: '85718')
user16 = User.create(first_name: 'Hitch', last_name: 'Elalam', email: 'hitch@me.com', password: 'password',
                     zip_code: '58286')
user17 = User.create(first_name: 'John', last_name: 'Feng', email: 'john@me.com', password: 'password',
                     zip_code: '86926')
user18 = User.create(first_name: 'Jon', last_name: 'Zamora', email: 'jon@me.com', password: 'password',
                     zip_code: '93015')
user19 = User.create(first_name: 'David', last_name: 'Oh', email: 'david@me.com', password: 'password',
                     zip_code: '52869')
user20 = User.create(first_name: 'Masa', last_name: 'Cheung', email: 'masa@me.com', password: 'password',
                     zip_code: '58296')
user21 = User.create(first_name: 'Tony', last_name: 'Zhang', email: 'tony@me.com', password: 'password',
                     zip_code: '19395')
user22 = User.create(first_name: 'Andrew', last_name: 'Roellig', email: 'andrew@me.com', password: 'password',
                     zip_code: '14869')
user23 = User.create(first_name: 'Anusha', last_name: 'Tuladhar', email: 'anusha@me.com', password: 'password',
                     zip_code: '28582')
user24 = User.create(first_name: 'Connor', last_name: 'Germain', email: 'connor@me.com', password: 'password',
                     zip_code: '39573')
user25 = User.create(first_name: 'Mike', last_name: 'Le', email: 'mike@me.com', password: 'password', zip_code: '94704')

demo.photo.attach(io: File.open('./app/assets/images/user/demo.png'), filename: 'demo.png')
user1.photo.attach(io: File.open('./app/assets/images/user/user1.png'), filename: 'user1.png')
user2.photo.attach(io: File.open('./app/assets/images/user/user2.jpeg'), filename: 'user2.jpeg')
user3.photo.attach(io: File.open('./app/assets/images/user/user3.jpeg'), filename: 'user3.jpeg')
user4.photo.attach(io: File.open('./app/assets/images/user/user4.jpeg'), filename: 'user4.jpeg')
user5.photo.attach(io: File.open('./app/assets/images/user/user5.jpeg'), filename: 'user5.jpeg')
user6.photo.attach(io: File.open('./app/assets/images/user/user6.png'), filename: 'user6.png')
user7.photo.attach(io: File.open('./app/assets/images/user/user7.jpeg'), filename: 'user7.jpeg')
user8.photo.attach(io: File.open('./app/assets/images/user/user8.jpeg'), filename: 'user8.jpeg')
user9.photo.attach(io: File.open('./app/assets/images/user/user9.png'), filename: 'user9.png')
user10.photo.attach(io: File.open('./app/assets/images/user/user10.jpeg'), filename: 'user10.jpeg')
user11.photo.attach(io: File.open('./app/assets/images/user/user11.png'), filename: 'user11.png')
user12.photo.attach(io: File.open('./app/assets/images/user/user12.png'), filename: 'user12.png')
user13.photo.attach(io: File.open('./app/assets/images/user/user13.jpeg'), filename: 'user13.jpeg')
user14.photo.attach(io: File.open('./app/assets/images/user/user14.png'), filename: 'user14.png')
user15.photo.attach(io: File.open('./app/assets/images/user/user15.jpeg'), filename: 'user15.jpeg')
user16.photo.attach(io: File.open('./app/assets/images/user/user16.png'), filename: 'user16.png')
user17.photo.attach(io: File.open('./app/assets/images/user/user17.jpeg'), filename: 'user17.jpeg')
user18.photo.attach(io: File.open('./app/assets/images/user/user18.jpeg'), filename: 'user18.jpeg')
user19.photo.attach(io: File.open('./app/assets/images/user/user19.jpeg'), filename: 'user19.jpeg')
user20.photo.attach(io: File.open('./app/assets/images/user/user20.jpeg'), filename: 'user20.jpeg')
user21.photo.attach(io: File.open('./app/assets/images/user/user21.png'), filename: 'user21.png')
user22.photo.attach(io: File.open('./app/assets/images/user/user22.png'), filename: 'user22.png')
user23.photo.attach(io: File.open('./app/assets/images/user/user23.png'), filename: 'user23.png')
user24.photo.attach(io: File.open('./app/assets/images/user/user24.jpeg'), filename: 'user24.jpeg')
user25.photo.attach(io: File.open('./app/assets/images/user/user25.jpeg'), filename: 'user25.jpeg')

business1 = Business.create(business_name: 'Wayfare Tavern', address: '558 Sacramento St', city: 'San Francisco',
                            state: 'CA', zip_code: '94111', latitude: 37.7945084861697, longitude: -122.40229458465481, phone: '(415) 722-9060', website: 'https://www.wayfaretavern.com/', price: '$$$')
business2 = Business.create(business_name: 'San Tung', address: '1031 Irving St', city: 'San Francisco', state: 'CA',
                            zip_code: '94122', latitude: 37.76432005714678, longitude: -122.46898624232722, phone: '(415) 242-0828', website: 'santung.net', price: '$$')
business3 = Business.create(business_name: 'Fog Harbor Fish House', address: 'Pier 39 Ste A-202',
                            city: 'San Francisco', state: 'CA', zip_code: '94133', latitude: 37.80964, longitude: -122.41025, phone: '(415) 421-2442', website: 'fogharbor.com', price: '$$$')
business4 = Business.create(business_name: 'El Farolito', address: '2779 Mission St,', city: 'San Francisco',
                            state: 'CA', zip_code: '94110', latitude: 37.75287062559472, longitude: -122.41838717998685, phone: '(415) 824-7877', website: 'elfarolitosf.com', price: '$')
business5 = Business.create(business_name: "Bob's Donuts and Pastry Shop", address: '1621 Polk St',
                            city: 'San Francisco', state: 'CA', zip_code: '94109', latitude: 37.79240255741854, longitude: -122.421093611636, phone: '(415) 776-3141', website: 'bobsdonutssf.com', price: '$')
business6 = Business.create(business_name: 'Mr. Szechuan', address: '890 Taraval St', city: 'San Francisco',
                            state: 'CA', zip_code: '94116', latitude: 37.74328765193854, longitude: -122.4754769246456, phone: '(415) 753-8788', website: 'mr-szechuan.business.site', price: '$$')
business7 = Business.create(business_name: 'PPQ Dungeness Island', address: '2332 Clement', city: 'San Francisco',
                            state: 'CA', zip_code: '94121', latitude: 37.78237546660963, longitude: -122.4844969743325, phone: '(415) 386-8266', website: 'ppqcrab.com', price: '$$')
business8 = Business.create(business_name: 'The Italian Homemade Company', address: '716 Columbus Ave',
                            city: 'San Francisco', state: 'CA', zip_code: '94133', latitude: 37.80178647913782, longitude: -122.41174635713192, phone: '(415) 712-8874', website: 'italianhomemadecompany.com', price: '$$')
business9 = Business.create(business_name: 'Trattoria Contadina', address: '1800 Mason St', city: 'San Francisco',
                            state: 'CA', zip_code: '94133', latitude: 37.800336816662345, longitude: -122.41241690960943, phone: '(415) 982-5728', website: 'trattoriacontadina.com', price: '$$')
business10 = Business.create(business_name: 'Sweet Maple', address: '2101 Sutter St', city: 'San Francisco',
                             state: 'CA', zip_code: '94135', latitude: 37.78583536590204, longitude: -122.43512030153097, phone: '(415) 655-9169', website: 'sweetmaplesf.com', price: '$$')
business11 = Business.create(business_name: 'Nopa', address: '560 Divisadero St', city: 'San Francisco', state: 'CA',
                             zip_code: '94117', latitude: 37.775502376264214, longitude: -122.4373426583848, phone: '(415) 864-8643', website: 'nopasf.com', price: '$$$')
business12 = Business.create(business_name: 'WoodHouse Fish Company', address: '2073 Market St', city: 'San Francisco',
                             state: 'CA', zip_code: '94114', latitude: 37.76781670267247, longitude: -122.42838952851967, phone: '(415) 437-2722', website: 'woodhousefish.com', price: '$$')
business13 = Business.create(business_name: 'Mensho Tokyo', address: '672 Geary St', city: 'San Francisco',
                             state: 'CA', zip_code: '94102', latitude: 37.78685726414309, longitude: -122.41434973036644, phone: '(415) 800-8345', website: 'mensho.tokyo', price: '$$')
business14 = Business.create(business_name: 'Foreign Cinema', address: '2534 Mission St', city: 'San Francisco',
                             state: 'CA', zip_code: '94110', latitude: 37.75666981067299, longitude: -122.41900138434323, phone: '(415) 648-7600', website: 'foreigncinema.com', price: '$$$')
business15 = Business.create(business_name: 'Burma Superstar', address: '309 Clement St', city: 'San Francisco',
                             state: 'CA', zip_code: '94109', latitude: 37.79157951574933, longitude: -122.46019686432457, phone: '(415) 387-2147', website: 'burmasuperstart.com', price: '$$')
business16 = Business.create(business_name: 'Don Pistos', address: '510 Union St', city: 'San Francisco', state: 'CA',
                             zip_code: '94133', latitude: 37.80093709081886, longitude: -122.40797864570737, phone: '(415) 395-0939', website: 'donpistos.com', price: '$')

# App Academy
business1.photo.attach(io: File.open('./app/assets/images/business/1-wayfare/wayfare1.jpeg'),
                       filename: 'wayfare1-1.jpeg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-wayfare/wayfare2.jpeg'), filename: 'wayfare2.jpeg')
business1.pics.attach(io: File.open('./app/assets/images/business/1-wayfare/wayfare3.jpeg'), filename: 'wayfare3.jpeg')

# San Tung
business2.photo.attach(io: File.open('./app/assets/images/business/2-san/san1.jpeg'), filename: 'san1-1.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san1.jpeg'), filename: 'san1.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san2.jpeg'), filename: 'san2.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san3.jpeg'), filename: 'san3.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san4.jpeg'), filename: 'san4.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san5.jpeg'), filename: 'san5.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san6.jpeg'), filename: 'san6.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san7.jpeg'), filename: 'san7.jpeg')
business2.pics.attach(io: File.open('./app/assets/images/business/2-san/san8.jpeg'), filename: 'san8.jpeg')

# Fog House
business3.photo.attach(io: File.open('./app/assets/images/business/3-fog/fog1.jpg'), filename: 'fog1-1.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog1.jpg'), filename: 'fog1.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog2.jpg'), filename: 'fog2.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog3.jpg'), filename: 'fog3.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog4.jpg'), filename: 'fog4.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog5.jpg'), filename: 'fog5.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog6.jpg'), filename: 'fog6.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog7.jpg'), filename: 'fog7.jpg')
business3.pics.attach(io: File.open('./app/assets/images/business/3-fog/fog8.jpg'), filename: 'fog8.jpg')

# El Farolito
business4.photo.attach(io: File.open('./app/assets/images/business/4-faro/faro1.jpeg'), filename: 'faro1-1.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro1.jpeg'), filename: 'faro1.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro2.jpeg'), filename: 'faro2.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro3.jpeg'), filename: 'faro3.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro4.jpeg'), filename: 'faro4.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro5.jpeg'), filename: 'faro5.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro6.jpeg'), filename: 'faro6.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro7.jpeg'), filename: 'faro7.jpeg')
business4.pics.attach(io: File.open('./app/assets/images/business/4-faro/faro8.jpeg'), filename: 'faro8.jpeg')

# Bob's Donuts
business5.photo.attach(io: File.open('./app/assets/images/business/5-bobs/bobs1.jpeg'), filename: 'bobs1-1.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs1.jpeg'), filename: 'bobs1.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs2.jpeg'), filename: 'bobs2.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs3.jpeg'), filename: 'bobs3.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs4.jpeg'), filename: 'bobs4.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs5.jpeg'), filename: 'bobs5.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs6.jpeg'), filename: 'bobs6.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs7.jpeg'), filename: 'bobs7.jpeg')
business5.pics.attach(io: File.open('./app/assets/images/business/5-bobs/bobs8.jpeg'), filename: 'bobs8.jpeg')

# Mr. Szechuan
business6.photo.attach(io: File.open('./app/assets/images/business/6-mr/mr1.jpeg'), filename: 'mr1-1.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr1.jpeg'), filename: 'mr1.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr2.jpeg'), filename: 'mr2.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr3.jpeg'), filename: 'mr3.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr4.jpeg'), filename: 'mr4.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr5.jpeg'), filename: 'mr5.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr6.jpeg'), filename: 'mr6.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr7.jpeg'), filename: 'mr7.jpeg')
business6.pics.attach(io: File.open('./app/assets/images/business/6-mr/mr8.jpeg'), filename: 'mr8.jpeg')

# PPQ Dungeness Island
business7.photo.attach(io: File.open('./app/assets/images/business/7-ppq/ppq1.jpeg'), filename: 'ppq1-1.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq1.jpeg'), filename: 'ppq1.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq2.jpeg'), filename: 'ppq2.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq3.jpeg'), filename: 'ppq3.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq4.jpeg'), filename: 'ppq4.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq5.jpeg'), filename: 'ppq5.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq6.jpeg'), filename: 'ppq6.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq7.jpeg'), filename: 'ppq7.jpeg')
business7.pics.attach(io: File.open('./app/assets/images/business/7-ppq/ppq8.jpeg'), filename: 'ppq8.jpeg')

# The Italian Homemade Company
business8.photo.attach(io: File.open('./app/assets/images/business/8-italianco/italianco1.jpeg'),
                       filename: 'italianco1-1.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco1.jpeg'),
                      filename: 'italianco1.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco2.jpeg'),
                      filename: 'italianco2.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco3.jpeg'),
                      filename: 'italianco3.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco4.jpeg'),
                      filename: 'italianco4.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco5.jpeg'),
                      filename: 'italianco5.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco6.jpeg'),
                      filename: 'italianco6.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco7.jpeg'),
                      filename: 'italianco7.jpeg')
business8.pics.attach(io: File.open('./app/assets/images/business/8-italianco/italianco8.jpeg'),
                      filename: 'italianco8.jpeg')

# Trattoria Contadina
business9.photo.attach(io: File.open('./app/assets/images/business/9-trat/trat1.jpeg'), filename: 'trat1-1.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat1.jpeg'), filename: 'trat1.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat2.jpeg'), filename: 'trat2.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat3.jpeg'), filename: 'trat3.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat4.jpeg'), filename: 'trat4.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat5.jpeg'), filename: 'trat5.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat6.jpeg'), filename: 'trat6.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat7.jpeg'), filename: 'trat7.jpeg')
business9.pics.attach(io: File.open('./app/assets/images/business/9-trat/trat8.jpeg'), filename: 'trat8.jpeg')

# Sweet Maple
business10.photo.attach(io: File.open('./app/assets/images/business/10-sweet/sweet1.jpeg'), filename: 'sweet1-1.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet1.jpeg'), filename: 'sweet1.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet2.jpeg'), filename: 'sweet2.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet3.jpeg'), filename: 'sweet3.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet4.jpeg'), filename: 'sweet4.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet5.jpeg'), filename: 'sweet5.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet6.jpeg'), filename: 'sweet6.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet7.jpeg'), filename: 'sweet7.jpeg')
business10.pics.attach(io: File.open('./app/assets/images/business/10-sweet/sweet8.jpeg'), filename: 'sweet8.jpeg')

# Nopa
business11.photo.attach(io: File.open('./app/assets/images/business/11-nopa/nopa1.jpeg'), filename: 'nopa1-1.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa1.jpeg'), filename: 'nopa1.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa2.jpeg'), filename: 'nopa2.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa3.jpeg'), filename: 'nopa3.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa4.jpeg'), filename: 'nopa4.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa5.jpeg'), filename: 'nopa5.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa6.jpeg'), filename: 'nopa6.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa7.jpeg'), filename: 'nopa7.jpeg')
business11.pics.attach(io: File.open('./app/assets/images/business/11-nopa/nopa8.jpeg'), filename: 'nopa8.jpeg')

# WoodHouse Fish Company
business12.photo.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse1.jpeg'),
                        filename: 'woodhouse1-1.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse1.jpeg'),
                       filename: 'woodhouse1.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse2.jpeg'),
                       filename: 'woodhouse2.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse3.jpeg'),
                       filename: 'woodhouse3.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse4.jpeg'),
                       filename: 'woodhouse4.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse5.jpeg'),
                       filename: 'woodhouse5.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse6.jpeg'),
                       filename: 'woodhouse6.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse7.jpeg'),
                       filename: 'woodhouse7.jpeg')
business12.pics.attach(io: File.open('./app/assets/images/business/12-woodhouse/woodhouse8.jpeg'),
                       filename: 'woodhouse8.jpeg')

# Mensho Tokyo
business13.photo.attach(io: File.open('./app/assets/images/business/13-mensho/mensho1.jpeg'),
                        filename: 'mensho1-1.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho1.jpeg'), filename: 'mensho1.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho2.jpeg'), filename: 'mensho2.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho3.jpeg'), filename: 'mensho3.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho4.jpeg'), filename: 'mensho4.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho5.jpeg'), filename: 'mensho5.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho6.jpeg'), filename: 'mensho6.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho7.jpeg'), filename: 'mensho7.jpeg')
business13.pics.attach(io: File.open('./app/assets/images/business/13-mensho/mensho8.jpeg'), filename: 'mensho8.jpeg')

# Foreign Cinema
business14.photo.attach(io: File.open('./app/assets/images/business/14-foreign/foreign1.jpeg'),
                        filename: 'foreign1-1.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign1.jpeg'),
                       filename: 'foreign1.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign2.jpeg'),
                       filename: 'foreign2.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign3.jpeg'),
                       filename: 'foreign3.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign4.jpeg'),
                       filename: 'foreign4.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign5.jpeg'),
                       filename: 'foreign5.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign6.jpeg'),
                       filename: 'foreign6.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign7.jpeg'),
                       filename: 'foreign7.jpeg')
business14.pics.attach(io: File.open('./app/assets/images/business/14-foreign/foreign8.jpeg'),
                       filename: 'foreign8.jpeg')

# Burma Superstar
business15.photo.attach(io: File.open('./app/assets/images/business/15-burma/burma1.jpeg'), filename: 'burma1-1.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma1.jpeg'), filename: 'burma1.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma2.jpeg'), filename: 'burma2.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma3.jpeg'), filename: 'burma3.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma4.jpeg'), filename: 'burma4.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma5.jpeg'), filename: 'burma5.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma6.jpeg'), filename: 'burma6.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma7.jpeg'), filename: 'burma7.jpeg')
business15.pics.attach(io: File.open('./app/assets/images/business/15-burma/burma8.jpeg'), filename: 'burma8.jpeg')

# Don Pistos
business16.photo.attach(io: File.open('./app/assets/images/business/16-don/don1.jpeg'), filename: 'don1-1.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don1.jpeg'), filename: 'don1.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don2.jpeg'), filename: 'don2.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don3.jpeg'), filename: 'don3.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don4.jpeg'), filename: 'don4.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don5.jpeg'), filename: 'don5.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don6.jpeg'), filename: 'don6.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don7.jpeg'), filename: 'don7.jpeg')
business16.pics.attach(io: File.open('./app/assets/images/business/16-don/don7.jpeg'), filename: 'don8.jpeg')

# App Academy
Review.create(business_id: business1.id, user_id: user1.id, rating: 5,
              body: 'Mussels, fried chicken, salad, so many sides - everything was delicious! Great for a work dinner or fun night out with friends. Dishes are great to share.')
Review.create(business_id: business1.id, user_id: user2.id, rating: 5,
              body: "This review is for a carry out order, but I was able to see the gorgeous interior when picking up. There's bar seating, indoor lounge seating and outdoor patio seating with heaters. I'd recommend at least dressing business casual to match the vibe. It really is stunning inside!")
Review.create(business_id: business1.id, user_id: user6.id, rating: 3,
              body: "Liked the vibe and the food I got was good but would have liked more vegan options. I got the quinoa salad and although yummy it was a little small and I wasn't blown away. DEF a fan of the popover though. It comes for the table and was so fluffy and delicious!")
Review.create(business_id: business1.id, user_id: user9.id, rating: 4,
              body: 'Our first time here, and my 100th Yelp review! We chose outdoor seating, which was a pleasant ambiance. Noise was average, not much traffic noise and seating felt somewhat private. Service was super attentive and accommodating to my wifes tree nut allergy.')
Review.create(business_id: business1.id, user_id: user12.id, rating: 4,
              body: "Wayfare Tavern reminds me of an old school speakeasy bar. I mean, let's talk about the bar. You got baristas with slick back hair, dressed neatly, and a bar filled with dark liquor. Not to mention the bowl of crisp potato chips by the bar (they tasted very good by the way), it all looked aesthetically pleasing.")
Review.create(business_id: business1.id, user_id: user18.id, rating: 3,
              body: 'Food wise, if you are looking for a restaurant with an un-ambitious menu, but decently executed, this is your spot. The menu was filled with staples and standards that you might expect at, say, a hotel lobby restaurant. Something for everyone, but nothing that is going to expand your palate or culinary horizons. The food was good, though certainly nothing to write home about.')
Review.create(business_id: business1.id, user_id: user19.id, rating: 5,
              body: 'Fantastic service and amazing atmosphere! Try the dougnuts are a must try!')

# San Tung
Review.create(business_id: business2.id, user_id: user4.id, rating: 5,
              body: 'Dry Fried Chicken Wings: Hands down the best chicken wings I have ever eaten.')
Review.create(business_id: business2.id, user_id: user5.id, rating: 4, body: "I don't know why, but I don't really get it. I prefer SO over San Tung's chicken wings. I feel like this place is just all hype. A lot of people really like the original dried fried chicken wings. I honestly thought it was way too salty for me.
We also ordered the garlic noodles, and it was super oily. I felt like that day the restaurant was off or something. We went on a day when the line  was around the corner. It was extremely long and we waited for an hour.
The line wasn't worth it. It was ALRIGHT.")
Review.create(business_id: business2.id, user_id: user6.id, rating: 2, body: "This is the type of place that mistreats you in service but you keep coming back for the food. It's a toxic relationship and boy does the outcome taste so good.
Every time I come to SF I always come here. There is nothing like it down in LA or does anywhere else compare!")
Review.create(business_id: business2.id, user_id: user7.id, rating: 5,
              body: 'During COViD you cannot walk in and order. The only way they take orders is by phone so the guy told us to go outside and call in our order. Went outside and called in 12 wings and they told me it would be a 15 minute wait so we went next door to Peasant Pies while we waited and grabbed dessert.')
Review.create(business_id: business2.id, user_id: user10.id, rating: 4,
              body: "I was recommended this place and was told the they had the most amazing wings. Let me tell you they did not disappoint! They are nice and crispy and flavorful! Also had the most amazing chow main I've had. For sure. It is open for take out only so make sure you call ahead as they won't take your order in person. Definitely lives up to the hype from these reviews.")
Review.create(business_id: business2.id, user_id: user11.id, rating: 4,
              body: "Their chicken is cooked to order and it's an amazing balance of crunchiness if the outside and soft and tender on the inside. The sauce itself is like a sweet and salty with a little bit of a kick to it. It's definitely one of those things that's better when you eat it right when it comes out but as of when I went, they were still doing take out only. I would still recommend trying it even if it's take out!")

# Fog House
Review.create(business_id: business3.id, user_id: user1.id, rating: 5,
              body: 'The filet mignon and blondie desert were delish! Jose took good care of us, exceptional service. ')
Review.create(business_id: business3.id, user_id: user11.id, rating: 5,
              body: "I made a reservation on a Wednesday for 2 at 8pm, and was shortly accommodated. A few minutes after checking in with the host at 7:55, I asked if it would be possible to get a window side table just for the lovely ocean sunset views, and surprisingly, they had a table! I'm very grateful for the short wait and accommodations.")
Review.create(business_id: business3.id, user_id: user21.id, rating: 5,
              body: "This restaurant is THE eatery to visit when you're at Pier 39 in San Francisco! Although the 40 minutes wait was quite long, it was totally worth it. The food, service and view were superb.")
Review.create(business_id: business3.id, user_id: user2.id, rating: 5,
              body: 'Execellent chip and chips and delicious clam chowers...wanted to finish strong and Bongjovi our server recommended the creme brulee...amazing.')
Review.create(business_id: business3.id, user_id: user12.id, rating: 5,
              body: "If you're looking for the best place to eat at in the touristy Pier 39, this is probably the place to be. Albeit the food isn't the best, you have to take into consideration the location and views. Side note, I would NOT recommend choosing an outdoor eating locations, the winds, birds, and atmosphere do not make a great dining experience")
Review.create(business_id: business3.id, user_id: user22.id, rating: 5,
              body: 'Make a reservation immediately. Went here to watch the sunset and eat some delicious food, but as we walked up the steps to the restaurant we heard a couple who was leaving say that it was some of the best food they ever had, which had my hopes up.')
Review.create(business_id: business3.id, user_id: user24.id, rating: 5,
              body: 'I would give this restaurant more than 5 stars if I could. Pier 39 has lots of nice attractions and restaurants, and I think Fog Harbor is the best. I reserved ahead of time and parking is available across the street in the garage')
Review.create(business_id: business3.id, user_id: user25.id, rating: 5, body: 'The views, the food, their signature cocktails, definitely deserve a 10/10. We visited from L.A and it was worth the visit. Every appetizer, entree, and drink we ordered were delicious!!
The staff was attentive. Our waiter was super nice and recommended great dishes.
Must try: clam chowder bread bowl, and ahi tuna. Btw the lobster tails are pretty big ;)
Will be visiting again')

# El Farolito
Review.create(business_id: business4.id, user_id: user3.id, rating: 5,
              body: "I got the Super Burrito (chicken) both times and it's been consistently good.")
Review.create(business_id: business4.id, user_id: user14.id, rating: 4,
              body: "Favorite burrito place in SF! After tax and all it's still under $9! It's the size of my forearm and definitely more than enough for a meal. And for me personally, it's like two meals.")
Review.create(business_id: business4.id, user_id: user15.id, rating: 5,
              body: "Dudeee, this place will forever be the best Mexican spot I have ever been to. I recently moved to New York, and you don't know how many times I cried at a Mexican restaurant because it'll just never be the sameeee.....")
Review.create(business_id: business4.id, user_id: user16.id, rating: 5,
              body: "A lot of restaurants these days pay attention more to the quality of the setting and not the food quality. El Farolito's attention to food quality is top notch and they don't skim on the fillings!")
Review.create(business_id: business4.id, user_id: user17.id, rating: 4,
              body: "The Superhero (5/5): The super quesadilla is a lifesaver for anyone who's super hungry. It's basically a two in one so you can easily split with someone. There's the perfect ratio of carne asada, avocado, sour cream, and cheese. We also tried the burrito but it really wasn't much compared to the quesadilla -- that's really the main thing to order.")
Review.create(business_id: business4.id, user_id: user18.id, rating: 1,
              body: "That said, it's a tiny place and often crowded (tiny place + crowded = not a good combination during this pandemic). People also often don't observe social distancing rules while waiting for their orders and the place often feels like a can of packed sardines. There is not a lot of physical space to move around.")
Review.create(business_id: business4.id, user_id: user19.id, rating: 5,
              body: 'This cash-only taqueria has the best burritos in the Mission, hands down. The carne asada is like no where else.')
Review.create(business_id: business4.id, user_id: user23.id, rating: 5,
              body: "I did not realize that there were 12 locations around the Bay Area with this being the original that was opened in 1983.  This location again has made SF Chronicle's Top 100 Restaurants list. Arriving around 12:30pm, there was a line out the door. With a large menu above the counter, I knew I wanted to get a burrito and went with a regular al pastor burrito. After you order, you wait off to the side for your order number to be called. If you want to eat in, there are six tables in the main room and about ten tables in a back patio area.")

# Bob's Donuts
Review.create(business_id: business5.id, user_id: user6.id, rating: 4,
              body: 'One of the best donut places I have ever been to. People rave it and its legit.')
Review.create(business_id: business5.id, user_id: user9.id, rating: 4,
              body: "I get into a mood where I need a food adventure and hubs and I get out of town and find somewhere cool neither of us had been. This is how we found bob's, and wow, I'm so glad we did. I was unsure when we arrived in the area, which was pretty grungy the morning we arrived, but we got in line and waited with everyone else.")
Review.create(business_id: business5.id, user_id: user12.id, rating: 5,
              body: 'Came here after bar hopping around Polk and this was a great way to end to night with some great donuts. The service was fast to get through the line and staff was friendly.')
Review.create(business_id: business5.id, user_id: user15.id, rating: 5,
              body: "I'm not even a fan of donuts, but the boyf was craving some and we came here. He ordered two of the crumble donuts and of course I stole a few bites. These have to be the perfect donuts in terms of texture and sweetness. Not too sweet, not too hard, literally they nailed the recipe to their donuts!")
Review.create(business_id: business5.id, user_id: user18.id, rating: 4,
              body: "Bob's Donuts is a 24-hour donut and pastry shop on Polk St (near Clay) in San Francisco.  This popular donut shop is known for it's fresh and delicious donuts, as well as it's giant donuts.  ")
Review.create(business_id: business5.id, user_id: user21.id, rating: 3,
              body: 'So, true to form, this is simply a donut shop to me.  Not bad, but not a destination dining with any specially exclusive unique offering that would have me rant nor rave or praise it above and beyond their peer donut shop competitors.')
Review.create(business_id: business5.id, user_id: user24.id, rating: 4,
              body: "The gentleman working at the counter was friendly and patient. He recommended the apple fritter. It was HUGE and so worth it. It's really light and airy. It is sweet but not overwhelmingly so. I highly recommend having some water or coffee nearby.")
Review.create(business_id: business5.id, user_id: user3.id, rating: 5, body: 'It is THE donut place to go.')

# Mr. Szechuan
Review.create(business_id: business6.id, user_id: user1.id, rating: 5,
              body: "I've been driving by Mr. Szechuan several times a week for the past year.")
Review.create(business_id: business6.id, user_id: user2.id, rating: 4,
              body: 'Their service is pretty good, food is a bit lackluster...')
Review.create(business_id: business6.id, user_id: user3.id, rating: 5,
              body: "Trying these dishes with friends were a lot of fun!  I didn't think any particular dish was spicy, and my friend said that she's had some dishes that were spicier.  So, I'd say if you're looking for a spicy dish, I don't think any of the above I'd say fulfills that criteria.  However, they're all pretty delicious, served over rice, with friends.")
Review.create(business_id: business6.id, user_id: user5.id, rating: 4,
              body: "Wow I'm so happy I found this place. This will be my go-to place when I want some spicy tong tingling mala goodness. Reasonable prices, large portions, tasty food, quick delivery -- what more can I want?")
Review.create(business_id: business6.id, user_id: user6.id, rating: 5,
              body: "This place has great service. My favorite dish was the crab fried rice. I just wish they told me it was spicy, which i can't really handle. Not their fault, but their menu on their board just said crab fried rice. I liked how they use real crab meat, and it was big enough portion for me to share with my company.")
Review.create(business_id: business6.id, user_id: user7.id, rating: 1, body: 'Overpriced and undersesoned!')

# PPQ Dungeness Island
Review.create(business_id: business7.id, user_id: user8.id, rating: 5,
              body: 'Amazing restaurant for crab! The peppercorn crab as well as the roasted garlic and butter crab were delicious!')
Review.create(business_id: business7.id, user_id: user9.id, rating: 5,
              body: 'Superb salt and pepper crab meal for 2 was all I expected + more!')
Review.create(business_id: business7.id, user_id: user10.id, rating: 3,
              body: "Our roasted crab was both much smaller than what my parents said they had last time here and was $75. Not PPQ Dungeness Island's fault, it's just the current state of things right now.")
Review.create(business_id: business7.id, user_id: user11.id, rating: 5,
              body: 'The star of our dish was the crab, and we were very pleased with the food experience. The dry sauce that seasoned the crab was so good! I enjoyed it by mixing it with the crab meat I pulled out from the legs. The crab meat was plump and stringy, but it was flavorful.')
Review.create(business_id: business7.id, user_id: user12.id, rating: 3, body: 'Good crab but not worth the price!')
Review.create(business_id: business7.id, user_id: user13.id, rating: 5,
              body: "Super meal at ppq, ordered roast crab, signature crab, crab noodles, and greens, pretty good portion size for 4pax. Crabs are expensive but that's the price of Dungeness now!")
Review.create(business_id: business7.id, user_id: user14.id, rating: 2,
              body: "They're not what they use to be. Its not consistent at all.")

# The Italian Homemade Company
Review.create(business_id: business8.id, user_id: user15.id, rating: 4, body: 'Everything was great, but super rich.')
Review.create(business_id: business8.id, user_id: user16.id, rating: 3,
              body: "I was excited about trying this but just wasn't completely satisfied. My lasagna was very salty and my bfs was very watery like if the sauce was watered down.")
Review.create(business_id: business8.id, user_id: user17.id, rating: 4,
              body: 'Solid pasta but their selection is limited.')
Review.create(business_id: business8.id, user_id: user18.id, rating: 2,
              body: 'Its like Olive Garden, but more expensive.')
Review.create(business_id: business8.id, user_id: user19.id, rating: 5,
              body: 'THIS PLACE IS A SOLID FLAG CARRIER OF ITALIAN CUISINE. Feeling freshness on every bite. I got the meat ravioli w pesto and was terrific. I also tried the fettuccine w shrimps special that was so good as well. Loved it definitely recommended for everyone who craves for italian.')
Review.create(business_id: business8.id, user_id: user20.id, rating: 3,
              body: 'Went in for lunch trying to get some nice filling pasta. Linguini with meatball came out as a nice big portion, pretty tasty meatball too. Unfortunately the gnocchi with white sauce was super disappointing. Seating for us was outside, as soon as it got a little bit cooler (which is very soon) , the gnocchi was pretty depressing as cold gnocchi is.')
Review.create(business_id: business8.id, user_id: user21.id, rating: 5,
              body: "Incredible spot, highly recommend!! It's super casual with homey vibes; you order inside before finding a seat outside. They bring your food to you on paper plates.")

# Trattoria Contadina
Review.create(business_id: business9.id, user_id: user1.id, rating: 4,
              body: "It's a very charming Italian restaurant, no fuss, just classic and traditional Italian food.")
Review.create(business_id: business9.id, user_id: user2.id, rating: 5,
              body: 'This spot is so amazing!! Was looking for a last minute date night restaurant for my boyfriend and I. I called them and they were very  genuine on the phone. They were able to give me a reservation in a heart beat. Once we arrive we were sat quickly. Supper cute restaurant!')
Review.create(business_id: business9.id, user_id: user22.id, rating: 5,
              body: "went at 8:15 on a Saturday night. My bf called to see if they had anything available and luckily they had a table for us in 2 hours! Besides calling, I would first try their website to book. On their website they may charge you $25 per person if you cancel. So I'm glad we were able to make reservations over the phone.")
Review.create(business_id: business9.id, user_id: user23.id, rating: 5,
              body: "We were told about this place by some friends... and boy were we glad they recommended this place! It's just amazing!!!!!")
Review.create(business_id: business9.id, user_id: user24.id, rating: 5,
              body: 'Solid Italian! Very healthy portions. No complaints - not the best Italian food you have ever had, but DELICIOUS - just a little more homestyle versus fine dining.')
Review.create(business_id: business9.id, user_id: user25.id, rating: 4,
              body: 'Very good pasta! Warmed my heart and stomach')
Review.create(business_id: business9.id, user_id: user14.id, rating: 3,
              body: 'Always wanted to try this place since we drive by all the time. The place is a cute small place and everyone was friendly. The pastas were a little on the heavy side. The appetizer was good and unusual. Overall this place was ok.')

# Sweet Maple
Review.create(business_id: business10.id, user_id: user2.id, rating: 4,
              body: 'Sweet maple is a star and it never disappointed me. Definitely loved its egg benedict, millionaire bacon, and crab omelette!')
Review.create(business_id: business10.id, user_id: user7.id, rating: 5,
              body: 'The wild pizza was my favorite! The cheese was very light and creamy and had great spread when pulling a slice out of the pie. The abundance of vegetables on top of the pizza (like the mushrooms and arugula) were fragrant and added nice textural contrast.')
Review.create(business_id: business10.id, user_id: user5.id, rating: 5,
              body: "Was in town for the Padres/Giants series this week.  Yelped breakfast restaurants near our hotel and found Sweet Maple.  Two of us ordered the Frisco scramble and the third ordered an omelette, all sharing the Millionaire's Bacon sampler.  All were in agreement, it was the best breakfast any of us had enjoyed in recent years.  Wish I didn't have to travel from San Diego to enjoy their food.  If it were local instead, it would definitely replace my local favorite breakfast spot.")
Review.create(business_id: business10.id, user_id: user13.id, rating: 2,
              body: "We had reservations and weren't able to be seated until three hours after our reservation time.")
Review.create(business_id: business10.id, user_id: user19.id, rating: 3,
              body: 'The food is decent, but more hyper than anything.')
Review.create(business_id: business10.id, user_id: user16.id, rating: 5,
              body: "All workers masked up. Knowledgeable server and polite. Fast service. Door kept open maybe for better ventilation, which I didn't mind. Bathroom clean, but air drying hands which I personally do not prefer.")
Review.create(business_id: business10.id, user_id: user17.id, rating: 5,
              body: 'Boyfriend and I have been looking for a nice bottomless mimosa place in the Bay Area and we heard about Sweet Maple. We were in the city and decided to finally try it out. However, the menu was so overwhelming for us that we decided to skip the mimosas and attack the variety of foods they have to offer.')

# Nopa
Review.create(business_id: business11.id, user_id: user1.id, rating: 5, body: 'Absolutely delicious.')
Review.create(business_id: business11.id, user_id: user2.id, rating: 4,
              body: " Expect to drop some cash here. The main dishes are minimum $20 and are not big enough to share. You'll probably want some sides as well. It's pricey so although I did like it, I wouldn't make it a regular spot. Regardless, I think it's worth checking out at least once.")
Review.create(business_id: business11.id, user_id: user3.id, rating: 3,
              body: "Nopa is a great spot and it's clearly popular. Our seasonal vegetarian selection was OK in my opinion. The Moroccan vegetable tajin was underwhelming and the lasagna was definitely unique but not what we expected. We enjoyed the warm goat cheese, but I think we'll try the restaurant again when the dishes circulate.")
Review.create(business_id: business11.id, user_id: user13.id, rating: 4,
              body: "Definitely make a reservation. It's always a busy popular place. Even so you probably won't get seated on time and have to wait awhile. Came here last on a Wednesday night with a reservation. Food and cocktails were amazing as always. Service was ver very slow for everything we ordered, from water to entrees. Favorite food was the smoked trout and pappardelle pasta. Cute outdoor seating as well.")
Review.create(business_id: business11.id, user_id: user9.id, rating: 5,
              body: 'I managed to snag a last minute reservation with some friends on a Saturday night, and we had such a great time! The food and experience were both fantastic and I would definitely come back again.')
Review.create(business_id: business11.id, user_id: user6.id, rating: 2,
              body: 'The service was just ok, our waitress kept forgetting a lot of things and had forgotten to give us an appetizer.')
Review.create(business_id: business11.id, user_id: user17.id, rating: 1,
              body: 'Modestly better than throwing money in the trashcan.')

# WoodHouse Fish Company
Review.create(business_id: business12.id, user_id: user4.id, rating: 1,
              body: 'Do not dine here. Frozen lobster. NOT FRESH. Awful. Way overpriced.')
Review.create(business_id: business12.id, user_id: user5.id, rating: 2,
              body: 'Two stars because the food was technically edible.')
Review.create(business_id: business12.id, user_id: user6.id, rating: 1,
              body: "It's like Red Lobster, but three days old.")
Review.create(business_id: business12.id, user_id: user14.id, rating: 3, body: 'Tasty lobster rolls but high prices!')
Review.create(business_id: business12.id, user_id: user10.id, rating: 2,
              body: '$56 for two small rolls! Talk about high prices!')
Review.create(business_id: business12.id, user_id: user7.id, rating: 5,
              body: "A local's favorite for rustic seafood and great beer! I've gone back many times for their cioppino; the bread is super soft and buttery and garlicky, and the soup is very filled with all the different seafoods. The fish and chips are also great; the batter of the fish is very thick and very crunchy, giving way to a satisfying bite. If there was one critique, it would be that the shrimp cocktail shrimps are a bit plain and limp in texture.")
Review.create(business_id: business12.id, user_id: user18.id, rating: 1,
              body: "Don't waste your time. The lobster roll was what I went to this place for due to the reviews, I'm highly disappointed. It's was 30% lobster and 70% bread. I paid 56.00 for 2 small lobster roll. What a waste of money! I've had better! Waste of time")

# Mensho Tokyo
Review.create(business_id: business13.id, user_id: user15.id, rating: 5,
              body: "This was probably one of the best ramen I've ever had!")
Review.create(business_id: business13.id, user_id: user7.id, rating: 2,
              body: "I've heard rave reviews from friends, strangers and Uber drivers alike, but unfortunately, I didn't find the food nearly as appetizing. Mensho Tokyo is a cute little ramen shop that offers all communal and bar seating with a capacity of about 28. This place is extremely popular, so expect a wait of roughly 45 - 90 minutes, depending on when you go.")
Review.create(business_id: business13.id, user_id: user9.id, rating: 5, body: 'The broth is so rich and creamy!')
Review.create(business_id: business13.id, user_id: user11.id, rating: 3,
              body: "A lot of people say that this is the best ramen in SF. I don't necessarily agree with that, but there is one specific element of their ramen that is the best in SF: the broth. Their broth is truly unmatched. Unbothered by the lowly competition. It's a thick, ultra creamy, umami lover's paradise. The broth reminds me of one of my favorite ramen places in LA.")
Review.create(business_id: business13.id, user_id: user12.id, rating: 3,
              body: "Tbh our ramens just didn't taste as great as I remember this place being. I used to walk all the way from work in soma just to stand in line for an hour+. This time around we went really late so there wasn't a wait at all. Perhaps since we went later, the quality of the ramen just wasn't as good?")
Review.create(business_id: business13.id, user_id: user19.id, rating: 2,
              body: "Boyfriend and I found this place on yelp and although there were mixed reviews, we decided it was worth a try.  Honestly, for a $16 bowl of ramen, you'd expect more. It was very mediocre. I've had way better ramen for much less.")

# Foreign Cinema
Review.create(business_id: business14.id, user_id: user1.id, rating: 4,
              body: "I thoroughly enjoyed my meal but I found the menu confusing. I'd blame it on my lack of knowledge with culinary arts. The meal was good!")
Review.create(business_id: business14.id, user_id: user2.id, rating: 1,
              body: 'This place is magical,  in that is magically ruins your appetite.')
Review.create(business_id: business14.id, user_id: user3.id, rating: 5,
              body: "I mean, I'd give it 4 stars just for the atmosphere. If not 5!! I don't want to ruin the experience for those who haven't been, but it honestly feels magical when you walk through the doors (as lame as I may sound lol).")
Review.create(business_id: business14.id, user_id: user4.id, rating: 5,
              body: 'Ahhh!! This place is truly so good! It is apparently extremely hard to book and we got a table indoors at 6pm for dinner. They play a movie daily around 8pm and there is a lounge outdoors that people can sit and watch the movie as well. Otherwise, you could get a table outdoors around that time and watch the movie while eating dinner.')
Review.create(business_id: business14.id, user_id: user5.id, rating: 4,
              body: "The inside is absolutely beautiful and there are usually films playing in the patio area. The quality of the dishes showed through the flavors, although the portions were quite small. The stars of the meal were the duck confit and the peach dessert, which ended the meal on a great note. The halibut was a little bland for our taste, although the soup was very flavorful. I'd come back for a special occasion - ambience and service were impeccable")
Review.create(business_id: business14.id, user_id: user6.id, rating: 4,
              body: "This brunch place has pretty good vibe and atmosphere with beautiful interior, but unfortunately the food didn't live up to my standard.  Dishes here are pretty pricey and small portions and they were not particularly good either. I think it's a good place for light brunch with booze to enjoy some aesthetic vibe, but if you're looking for some good food, this is not the place.  ")

# Burma Superstar
Review.create(business_id: business15.id, user_id: user7.id, rating: 5,
              body: 'The Beef Curry was deeply flavorful, the beef wonderfully braised, and the sauce soaked up with the provided rice. Lunch was great!')
Review.create(business_id: business15.id, user_id: user8.id, rating: 4,
              body: "My friend and I shared a rainbow salad and I ordered Nian Pa Dok (a flat noodle dish with curry). Because I'm a hulking, ridiculously tall girl, I naturally like to eat--probably more than what my stomach can fit in, but I manage to store the food someplace unknown. I'm a cow..I probably have 4 stomach compartments. Heh.")
Review.create(business_id: business15.id, user_id: user9.id, rating: 5,
              body: 'We really enjoyed the two noodle soup dishes.  They were very flavorful and truly reminded my husband of his childhood.  ')
Review.create(business_id: business15.id, user_id: user10.id, rating: 1,
              body: 'To start with this was my 2nd time at the restaurant as I loved the food first time and we decided to revisit the place. However was highly disappointed with my high expectations!')
Review.create(business_id: business15.id, user_id: user11.id, rating: 4,
              body: 'Definitely recommend the fiery vegetables with tofu!! came here on a saturday night around 6pm and the wait was around 25 minutes to be seated outside (with heat lamps!). service was good and food was reasonably priced. the chicken curry dahl, rainbow salad (ordered a large but quantity was not much), and the garlic noodles were pretty good (maybe not my personal preference). but overall, i would recommend! especially if you want to try or just like burmese food')
Review.create(business_id: business15.id, user_id: user12.id, rating: 5,
              body: 'They also gave us a complimentary dessert since they asked if we could switch tables a few min after we got seated, and it was some black sesame thing topped with fruit. It was AMAZING and I wanted more. It was not too sweet and had a kind of rice pudding ish texture.')

# Don Pistos
Review.create(business_id: business16.id, user_id: user14.id, rating: 2,
              body: 'Come for the food, stay for the drinks.')
Review.create(business_id: business16.id, user_id: user15.id, rating: 5,
              body: "So yummy! Came here yesterday with a group of people for my fiance's birthday and service and food did NOT disappoint. We got chips, salsa, queso, tacos, sashimi, enchiladas and the regular and hibiscus margaritas.")
Review.create(business_id: business16.id, user_id: user16.id, rating: 5, body: 'The food is so fresh and tasty!')
Review.create(business_id: business16.id, user_id: user17.id, rating: 1,
              body: "HORRRRRRRIBLE service. For some reason the day I went, the staff mentioned that someone had booked ALL the reservations the whole morning. But...it looked like they never showed up...so I don't know why they didn't call to confirm or pass up their seats especially 45+ min into the reservation. They told me they didn't take reservations after a certain time, but for some reason they were holding it for this person who reserved it after that time...It literally made no sense and I don't even know why they bother to have an online Yelp waitlist option if they don't even use it.")
Review.create(business_id: business16.id, user_id: user18.id, rating: 5,
              body: 'Love this spot! I prefer this for Happy Hour and nibbles vs a dinner spot. BOMB margaritas! My favorite and go to is the Hibiscus margarita in a pitcher. The tacos are delicious but if you want to switch it up, try every flavor (especially potato) tacos delgados! And their Tortilla soup is super tasty and filling.')
Review.create(business_id: business16.id, user_id: user19.id, rating: 4,
              body: 'Food was really good, the bottomless mimosas were a plus, just wish they had a few more options for flavors to miss with the brute. Tacos were so good!')

cat1 = Category.create(name: 'Breakfast')
cat2 = Category.create(name: 'Lunch')
cat3 = Category.create(name: 'Dinner')
cat4 = Category.create(name: 'Seafood')
cat5 = Category.create(name: 'Asian')
cat6 = Category.create(name: 'Asian Fusion')
cat7 = Category.create(name: 'Mexican')
cat8 = Category.create(name: 'Italian')
cat9 = Category.create(name: 'American')

BusinessCategory.create(business_id: business1.id, category_id: cat9.id)
BusinessCategory.create(business_id: business1.id, category_id: cat3.id)
BusinessCategory.create(business_id: business1.id, category_id: cat2.id)
BusinessCategory.create(business_id: business1.id, category_id: cat6.id)
BusinessCategory.create(business_id: business2.id, category_id: cat3.id)
BusinessCategory.create(business_id: business2.id, category_id: cat5.id)
BusinessCategory.create(business_id: business3.id, category_id: cat3.id)
BusinessCategory.create(business_id: business3.id, category_id: cat4.id)
BusinessCategory.create(business_id: business4.id, category_id: cat2.id)
BusinessCategory.create(business_id: business4.id, category_id: cat7.id)
BusinessCategory.create(business_id: business5.id, category_id: cat1.id)
BusinessCategory.create(business_id: business5.id, category_id: cat9.id)
BusinessCategory.create(business_id: business6.id, category_id: cat2.id)
BusinessCategory.create(business_id: business6.id, category_id: cat5.id)
BusinessCategory.create(business_id: business7.id, category_id: cat3.id)
BusinessCategory.create(business_id: business7.id, category_id: cat6.id)
BusinessCategory.create(business_id: business8.id, category_id: cat2.id)
BusinessCategory.create(business_id: business8.id, category_id: cat8.id)
BusinessCategory.create(business_id: business9.id, category_id: cat3.id)
BusinessCategory.create(business_id: business9.id, category_id: cat8.id)
BusinessCategory.create(business_id: business10.id, category_id: cat1.id)
BusinessCategory.create(business_id: business10.id, category_id: cat9.id)
BusinessCategory.create(business_id: business11.id, category_id: cat3.id)
BusinessCategory.create(business_id: business11.id, category_id: cat9.id)
BusinessCategory.create(business_id: business12.id, category_id: cat2.id)
BusinessCategory.create(business_id: business12.id, category_id: cat4.id)
BusinessCategory.create(business_id: business13.id, category_id: cat2.id)
BusinessCategory.create(business_id: business13.id, category_id: cat5.id)
BusinessCategory.create(business_id: business14.id, category_id: cat3.id)
BusinessCategory.create(business_id: business14.id, category_id: cat9.id)
BusinessCategory.create(business_id: business15.id, category_id: cat3.id)
BusinessCategory.create(business_id: business15.id, category_id: cat6.id)
BusinessCategory.create(business_id: business16.id, category_id: cat2.id)
BusinessCategory.create(business_id: business16.id, category_id: cat7.id)
