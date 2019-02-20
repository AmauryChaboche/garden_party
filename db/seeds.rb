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

c = User.create(
  email: 'bouazizjeanne@gmail.com',
  password: '123456',
  first_name: 'Jeanne',
  last_name: 'Bouaziz',
  city: 'Paris',
  photo: 'https://avatars3.githubusercontent.com/u/44258856?s=400&v=4'
)

d = User.create(
  email: 'd.fortict@vivit.fr',
  password: '123456',
  first_name: 'Denis',
  last_name: 'Fortit',
  city: 'Paris',
  photo: 'https://avatars1.githubusercontent.com/u/45043572?s=400&v=4'
)

# GARDENS


gard1 = Garden.new(
  title: 'Lovely garden',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 150,
  surface: 10,
  user_id: 8,
  address: '10, avenue Gambetta PARIS',
  product: 'tomatoes',
  photo: 'https://images.unsplash.com/photo-1515347272087-685ce5a1fc8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2466&q=80'
)

gard2 = Garden.create(
  title: 'Huge garden',
  description:'a huge garden in versailles',
  price: 100,
  surface: 100,
  user: b,
  address: '10, avenue Carnot PARIS',
  product: 'salads',
)

gard3 = Garden.create(
  title: 'Simple garden',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 50,
  surface: 5,
  user: c,
  address: '10, avenue Magenta PARIS',
  product: 'beans',
)

gard4 = Garden.create(
  title: 'Poor garden',
  description:'a poor garden: ideal place to grow salads',
  price: 40,
  surface: 4,
  user: d,
  address: '10, rue de chateaudun PARIS',
  product: 'carrots',
)

gard5 = Garden.create(
  title: 'Lovely garden in paris !!! ',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 150,
  surface: 10,
  user: a,
  address: '10, avenue Gambetta PARIS',
  product: 'tomatoes',
)

gard6 = Garden.create(
  title: 'Huge garden in Versailles',
  description:'a huge garden in versailles',
  price: 100,
  surface: 100,
  user: b,
  address: '10, avenue Carnot PARIS',
  product: 'salads',
)

gard7 = Garden.create(
  title: 'Simple garden in paris',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 50,
  surface: 5,
  user: c,
  address: '10, avenue Magenta PARIS',
  product: 'beans',
)

gard8 = Garden.create(
  title: 'Poor garden  in NY ',
  description:'a poor garden: ideal place to grow salads',
  price: 40,
  surface: 4,
  user: d,
  address: '10, rue de chateaudun PARIS',
  product: 'carrots',
)

gard9 = Garden.create(
  title: 'Lovely garden ,in montamartre',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 150,
  surface: 10,
  user: a,
  address: '10, avenue Gambetta PARIS',
  product: 'tomatoes',
)

gard10 = Garden.create(
  title: ' Un garden',
  description:'a huge garden in versailles',
  price: 100,
  surface: 100,
  user: b,
  address: '10, avenue Carnot PARIS',
  product: 'salads',
)

gard11 = Garden.create(
  title: 'A very Simple garden',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 50,
  surface: 5,
  user: c,
  address: '10, avenue Magenta PARIS',
  product: 'beans',
)

gard12 = Garden.create(
  title: 'A Poor garden',
  description:'a poor garden: ideal place to grow salads',
  price: 40,
  surface: 4,
  user: d,
  address: '10, rue de chateaudun PARIS',
  product: 'carrots',
)
gard13 = Garden.create(
  title: 'AN amazing Lovely garden',
  description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes',
  price: 150,
  surface: 10,
  user: a,
  address: '10, avenue Gambetta PARIS',
  product: 'tomatoes',
)

gard14 = Garden.create(
  title: 'Huge garden city',
  description:'a huge garden in versailles',
  price: 100,
  surface: 100,
  user: b,
  address: '10, avenue Carnot PARIS',
  product: 'salads',
)

gard15 = Garden.create(
  title: 'Simple garden in 9 ',
  description:'a simple garden in Pigalles : ideal place to grow potatoes',
  price: 50,
  surface: 5,
  user: c,
  address: '10, avenue Magenta PARIS',
  product: 'beans',
)

gard16 = Garden.create(
  title: 'Poor garden in 17',
  description:'a poor garden: ideal place to grow salads',
  price: 40,
  surface: 4,
  user: d,
  address: '10, rue de chateaudun PARIS',
  product: 'carrots',
)


# BOOKINGS


book1 = Booking.create(
  garden: gard1,
  user: a
)

book1 = Booking.create(
  garden: gard2,
  user: a
)

book1 = Booking.create(
  garden: gard3,
  user: b
)

book1 = Booking.create(
  garden: gard4,
  user: b
)

book1 = Booking.create(
  garden: gard5,
  user: c
)

book1 = Booking.create(
  garden: gard6,
  user: c
)


















