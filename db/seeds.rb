# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# boats = Boat.create([{name: 'Andante'}, {name: 'Witte Walvis'}, {name: 'BU 68'}])
p "started seed"
Boat.destroy_all
User.destroy_all

users = User.create([
  {email: 'test6@test.com', first_name: 'Jonny', last_name: 'Doe', password: '123456'},
  {email: 'test2@test.com', first_name: 'Johny', last_name: 'Does', password: '123456'},
  {email: 'test3@test.com', first_name: 'Jack', last_name: 'Doem', password: '123456'},
  {email: 'test4@test.com', first_name: 'Jimmy', last_name: 'Doek', password: '123456'},
  {email: 'test5@test.com', first_name: 'Jonathan', last_name: 'Doel', password: '123456'}
  ])

# p users

# users.each do |u|
#   user = User.new(u)
#   user.save!
# end

boats = Boat.create([
  {name: 'Andante II', nr_of_rooms: 4, nr_of_guests: 10, price_per_day: 600, description: "Lots of text", user: users.first},
  {name: 'Andante III', nr_of_rooms: 1, nr_of_guests: 2, price_per_day: 200,description: "More text", user: users[1]},
  {name: 'Andante IV', nr_of_rooms: 7, nr_of_guests: 22, price_per_day: 950,description: "Big is beautiful of text", user: users.last}
  ])
# user = User.create(
#   {email: 'test6@test.com', first_name: 'John', last_name: 'Doe'}
# )

# boat = Boat.create({name: 'Andante VI', user: user})


# p users.first.first_name
#  p boat.name

p 'seed completed'
