# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: 'amaury.chaboche@gmail.com')

Garden.create(title: 'Lovely garden', description:'a lovely garden near musée de montmartre : ideal place to grow tomatoes', price: 150, surface: 10, user_id: 1)
Garden.create(title: 'Huge garden', description:'a huge garden in versailles', price: 100, surface: 100, user_id: 1)
Garden.create(title: 'Simple garden', description:'a simple garden in Pigalles : ideal place to grow potatoes', price: 50, surface: 5, user_id: 1)
Garden.create(title: 'Poor garden', description:'a poor garden: ideal place to grow salads', price: 40, surface: 4, user_id: 1)
