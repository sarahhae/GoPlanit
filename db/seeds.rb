User.destroy_all
u1 = User.create :username => 'helloitsme', :name => 'Charlie Wilson', :dob => '08-03-1989', :email => 'hello@ga.co', :password => 'chickenfries', :profile_image => 'https://image.flaticon.com/icons/png/512/147/147140.png', :admin => true
u2 = User.create :username => 'helloitsworld', :name => 'Lisa Doodle', :dob => '25-02-1992', :email => 'helloworld@ga.co', :password => 'Pepperdoll', :profile_image => 'https://image.flaticon.com/icons/png/512/147/147140.png'
u3 = User.create :username => 'haesun95', :name => 'Oliver Heavens', :dob => '30-06-1985',:email => 'gptjs@ga.co', :password => 'candycane', :profile_image => 'https://image.flaticon.com/icons/png/512/147/147140.png'
u4 = User.create :username => 'haesun89', :name => 'Rebecca Axe', :dob => '03-12-1990',:email => 'gptjs89@ga.co', :password => 'poptarts', :profile_image => 'https://image.flaticon.com/icons/png/512/147/147140.png'
puts "#{ User.count } users created."

Trip.destroy_all
t1 = Trip.create :title => 'South America', :image => 'https://cdn-image.departures.com/sites/default/files/1529696316/cathedral-cusco-peru-CUSCOGUIDE0618.jpg', :start_date => '04-06-2021', :end_date => '10-02-2022'
t2 = Trip.create :title => 'North America', :image => 'https://images.unsplash.com/photo-1517935706615-2717063c2225?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80.jpg', :start_date => '10-02-2022', :end_date => '03-03-2022'
t3 = Trip.create :title => 'Middle-East', :image => 'https://i.pinimg.com/originals/f4/9e/4d/f49e4d1f91c496824de8e8dcd24a59ef.jpg', :start_date => '03-03-2022', :end_date => '14-07-2022'
t4 = Trip.create :title => 'Europe', :image => 'https://i.pinimg.com/originals/28/ea/4b/28ea4bc54ab46010d00296b55fc46d54.jpg', :start_date => '14-07-2022', :end_date => '08-02-2023'
t5 = Trip.create :title => 'Southeast Asia', :image => 'https://noticieroenfoque.com/wp-content/uploads/2020/02/Bagan-templo-sagrado-en-Birmania-fue-utilizado-para-filme-porno.jpg', :start_date => '08-02-2023', :end_date => '11-06-2023'
puts "#{ Trip.count } trips created."

Item.destroy_all
i1 = Item.create :flight => 'Cusco, Peru', :accomodation => 'Cusco Backpackers', :activity => 'Machu Picchu Trail', :transport => 'Bus, Uber, Taxi', :insurance => 'Yes', :misc => 'Food and Beverages'
i2 = Item.create :flight => 'Toronto, Canada', :accomodation => 'Niel Wycik Backpackers', :activity => 'Niagara Falls', :transport => 'Subway, Bus, Uber', :insurance => 'Yes', :misc => 'Food and Beverages'
i3 = Item.create :flight => 'Tehran, Iran', :accomodation => 'Family Homestay', :activity => 'Dessert Trail', :transport => 'Taxi, Camel Ride', :insurance => 'yes', :misc => 'Food and Beverages'
i4 = Item.create :flight => 'Lisbon, Portugal', :accomodation => 'Lisbon Backpackers', :activity => 'City Tour', :transport => 'Bus', :insurance => 'yes', :misc => 'Food and Beverages, shopping'
i5 = Item.create :flight => 'Mandalay, Burma', :accomodation => 'Airbnb', :activity => 'Historical Tour', :transport => 'Taxi', :insurance => 'yes', :misc => 'Food and Beverages, shopping'
puts "#{ Item.count } items created."

puts "Trips and Items"
t1.items << i1
t2.items << i2
t3.items << i3
t4.items << i4
t5.items << i5

puts "Trips and Users"
u1.trips << t1 << t2
u2.trips << t3
u3.trips << t4
u4.trips << t5
