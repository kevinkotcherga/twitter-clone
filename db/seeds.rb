# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
PostTweet.destroy_all

User.create(email: 'example@example.com', password:'password', password_confirmation: 'password', first_name: 'Neil', last_name: 'Armstrong')
User.create(email: 'test@example.com', password:'password', password_confirmation: 'password', first_name: 'Youri', last_name: 'Gagarine')
User.create(email: 'test@test.com', password:'password', password_confirmation: 'password', first_name: 'Jean', last_name: 'User')

PostTweet.create(body: "Salut, c'est mon premier tweet !", user: User.first)
PostTweet.create(body: 'Voici un message ! =)', user: User.last)
