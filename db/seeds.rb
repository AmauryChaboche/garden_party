# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Garden.destroy_all
User.destroy_all

# USERS
puts 'Create Users...'

a = User.create(
  email: 'amaury.chaboche@gmail.com',
  password: '123456',
  first_name: 'Amaury',
  last_name: 'Chaboche',
  city: 'Marseille',
  photo: 'https://avatars0.githubusercontent.com/u/19595651?s=400&amp;u=6d0b4d0e05bcc8da8580be89c53852dd8ffbdc10&amp;v=4'
)

b = User.create(
  email: 'astriddelcros@gmail.com',
  password: '123456',
  first_name: 'Astrid',
  last_name: 'Delcros',
  city: 'Paris',
  photo: 'https://avatars1.githubusercontent.com/u/38258219?s=400&v=4'
)

c = User.create!(
  email: 'bouazizjeanne@gmail.com',
  password: '123456',
  first_name: 'Jeanne',
  last_name: 'Bouaziz',
  city: 'Paris',
  photo: 'https://avatars3.githubusercontent.com/u/44258856?s=400&v=4'
)

d = User.create!(
  email: 'd.fortict@vivit.fr',
  password: '123456',
  first_name: 'Denis',
  last_name: 'Fortit',
  city: 'Paris',
  photo: 'https://avatars1.githubusercontent.com/u/45043572?s=400&v=4'
)

# GARDENS
puts 'Create Gardens...'

gard1 = Garden.new(
  title: 'Lovely garden',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 150,
  surface: 10,
  user_id: 1,
  address: '10, avenue Gambetta PARIS',
  product: 'tomatoes'
)
gard1.remote_photo_url = 'https://images.unsplash.com/photo-1508313880080-c4bef0730395?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2272&q=80'
gard1.save!

gard2 = Garden.create!(
  title: 'Huge garden',
  description:'a huge garden in versailles',
  price: 100,
  surface: 100,
  user: b,
  address: '10, avenue Carnot PARIS',
  product: 'salads',
)
gard2.remote_photo_url = 'https://images.unsplash.com/photo-1534710961216-75c88202f43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard2.save!

gard3 = Garden.create!(
  title: 'Simple garden',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 50,
  surface: 5,
  user: c,
  address: '10, avenue Magenta PARIS',
  product: 'beans',
)
gard3.remote_photo_url = 'https://images.unsplash.com/photo-1506941433945-99a2aa4bd50a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60
'
gard3.save!

gard4 = Garden.create!(
  title: 'Poor garden',
  description:'a poor garden: ideal place to grow salads',
  price: 10,
  surface: 40,
  user: d,
  address: '10, rue de chateaudun PARIS',
  product: 'carrots',
)
gard4.remote_photo_url = 'https://images.unsplash.com/photo-1523881207092-309223e59226?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard4.save!

gard5 = Garden.create!(
  title: 'Lovely garden in paris !!! ',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 2,
  surface: 10,
  user: a,
  address: '40, avenue Gambetta PARIS',
  product: 'tomatoes',
)
gard5.remote_photo_url = 'https://images.unsplash.com/photo-1438109382753-8368e7e1e7cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
gard5.save!

gard6 = Garden.create!(
  title: 'Huge garden in Versailles',
  description:'a huge garden in versailles',
  price: 3,
  surface: 100,
  user: b,
  address: '10, avenue hoche PARIS',
  product: 'salads',
)

gard6.remote_photo_url = 'https://images.unsplash.com/photo-1516906561371-53f48df1254d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard6.save!

gard7 = Garden.create!(
  title: 'Simple garden in paris',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 2,
  surface: 5,
  user: c,
  address: '10, avenue foch PARIS',
  product: 'beans',
)

gard7.remote_photo_url = 'https://images.unsplash.com/photo-1500651230702-0e2d8a49d4ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard7.save!

gard8 = Garden.create!(
  title: 'Poor garden  in NY ',
  description:'a poor garden: ideal place to grow salads',
  price: 4,
  surface: 4,
  user: d,
  address: 'gare du Nord paris',
  product: 'carrots',
)

gard8.remote_photo_url = 'https://images.unsplash.com/photo-1470725756322-4c67ecd0f676?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard8.save!

gard9 = Garden.create!(
  title: 'Lovely garden ,in montamartre',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 15,
  surface: 10,
  user: a,
  address: 'Gare de lyon paris',
  product: 'tomatoes',
)

gard9.remote_photo_url = 'https://images.unsplash.com/photo-1536235551740-15dc337df024?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard9.save!

gard10 = Garden.create!(
  title: ' Un garden',
  description:'a huge garden in versailles',
  price: 10,
  surface: 100,
  user: b,
  address: '10, avenue des ternes PARIS',
  product: 'salads',
)
gard10.remote_photo_url = 'https://images.unsplash.com/photo-1536235551740-15dc337df024?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard10.save!

gard11 = Garden.create!(
  title: 'A very Simple garden',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 5,
  surface: 5,
  user: c,
  address: '10, boulevard Magenta PARIS',
  product: 'beans',
)

gard11.remote_photo_url = 'https://images.unsplash.com/photo-1462690417829-5b41247f6b0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard11.save!

gard12 = Garden.create!(
  title: 'A Poor garden',
  description:'a poor garden: ideal place to grow salads',
  price: 4,
  surface: 2,
  user: d,
  address: '10, rue de milan PARIS',
  product: 'carrots',
)

gard12.remote_photo_url = 'https://images.unsplash.com/photo-1546000436-f64926ed0a1c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard12.save!


gard13 = Garden.create!(
  title: 'AN amazing Lovely garden',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 4,
  surface: 10,
  user: a,
  address: '10, avenue de la République PARIS',
  product: 'tomatoes',
)

gard13.remote_photo_url = 'https://images.unsplash.com/photo-1535090467336-9501f96eef89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard13.save!

gard14 = Garden.create!(
  title: 'Huge garden city',
  description:'a huge garden in versailles',
  price: 4,
  surface: 100,
  user: b,
  address: '10, avenue friedland PARIS',
  product: 'salads',
)

gard14.remote_photo_url = 'https://images.unsplash.com/photo-1544656445-306d98d0e4ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=712&q=80'
gard14.save!

gard15 = Garden.create!(
  title: 'Simple garden in 9 ',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 1,
  surface: 5,
  user: c,
  address: 'Gare montparnasse paris',
  product: 'beans',
)
gard15.remote_photo_url = 'https://images.unsplash.com/photo-1544656445-306d98d0e4ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=712&q=80'
gard15.save!

gard16 = Garden.create!(
  title: 'Poor garden in 17',
  description:'a poor garden: ideal place to grow salads',
  price: 2,
  surface: 4,
  user: d,
  address: '4 avenue du maine PARIS',
  product: 'carrots',
)

gard16.remote_photo_url = 'https://images.unsplash.com/photo-1466248597128-17a2d5f14664?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
gard16.save!

# BOOKINGS
puts 'Create Bookings...'

book1 = Booking.create!(
  garden: gard1,
  user: a
)

book1 = Booking.create!(
  garden: gard2,
  user: a
)

book1 = Booking.create!(
  garden: gard3,
  user: b
)

book1 = Booking.create!(
  garden: gard4,
  user: b
)

book1 = Booking.create!(
  garden: gard5,
  user: c
)

book1 = Booking.create!(
  garden: gard6,
  user: c
)


















