# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# boats = Boat.create([{name: 'Andante'}, {name: 'Witte Walvis'}, {name: 'BU 68'}])
p "started seed"

Booking.destroy_all
Boat.destroy_all
User.destroy_all

users = User.create([
  {email: 'test1@test.com', first_name: 'Jonny', last_name: 'Doe', password: '123456'},
  {email: 'test2@test.com', first_name: 'Johny', last_name: 'Does', password: '123456'},
  {email: 'test3@test.com', first_name: 'Jack', last_name: 'Doem', password: '123456'},
  {email: 'test4@test.com', first_name: 'Jimmy', last_name: 'Doek', password: '123456'},
  {email: 'test5@test.com', first_name: 'Johny', last_name: 'Does', password: '123456'},
  {email: 'test6@test.com', first_name: 'Jack', last_name: 'Doem', password: '123456'},
  {email: 'test7@test.com', first_name: 'Jimmy', last_name: 'Doek', password: '123456'},
  {email: 'test8@test.com', first_name: 'Jonathan', last_name: 'Doel', password: '123456'}
  ])

boats = Boat.create([
  {name: 'Andante II', nr_of_rooms: 4, nr_of_guests: 10, price_per_day: 600, description: "Lots of text", user: users.first, address: "Kennemerboulevard 540, IJmuiden"},
  {name: 'Andante III', nr_of_rooms: 1, nr_of_guests: 2, price_per_day: 200,description: "More text", user: users[1], address: "De Ruyterplein 1, Vlissingen"},
  {name: 'Andante IV', nr_of_rooms: 7, nr_of_guests: 22, price_per_day: 950,description: "Big is beautiful of text", user: users[2], address: "Jadchthavenlaan 3, Leeuwarden"}
  ])

dates = []
day = 2
10.times do
date = Date.new(2011, 10, day)
dates << date
day += 2
end


bookings = Booking.create([
  {start_date: dates[0], end_date: dates[1], review_rating: 5, review_description: "Excelent Boat", boat: boats.first, user: users[5]},
  {start_date: dates[2], end_date: dates[3], review_rating: 3, review_description: "Normal Boat", boat: boats[1], user: users[6]},
  {start_date: dates[4], end_date: dates[5], review_rating: 3, review_description: "Fine Boat", boat: boats.last, user: users[7]},
  {start_date: dates[6], end_date: dates[7], review_rating: 2, review_description: "Interesting Boat", boat: boats.first, user: users[8]},
  {start_date: dates[8], end_date: dates[9], review_rating: 1, review_description: "Stupid Boat", boat: boats.last, user: users[8]}
  ])

p 'seed completed'
