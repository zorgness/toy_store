# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
User.destroy_all
Category.destroy_all

user1 = User.new(email: 'test@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'Tom', last_name: 'lol', phone:'0000000001')
user2 = User.new(email: 'mathilde@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'Mathilde', last_name: 'lol', phone:'0703056061')
user3 = User.new(email: 'lea@gmail.com', password: '123456', password_confirmation: '123456', first_name: 'Lea', last_name: 'lol', phone:'0600304001')

user1.save
user2.save
user3.save

img1 = URI.open('https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg')
user1.photo.attach(io: img1, filename: "1.jpeg", content_type: 'image/jpeg')
img2 = URI.open('https://prod-drupal-files.storage.googleapis.com/images/person/Marta%20Iglesias%20Profile.jpg')
user2.photo.attach(io: img2, filename: "1.jpeg", content_type: 'image/jpeg')
img3 = URI.open('https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg')
user3.photo.attach(io: img3, filename: "1.jpeg", content_type: 'image/jpeg')


mecha = Category.new(name: 'Mecha', photo_path: 'mecha.jpg')
mecha.save

bear = Category.new(name: 'Bear', photo_path: 'bear.jpg')
bear.save

lego = Category.new(name: 'Lego', photo_path: 'lego.jpg')
lego.save

cars = Category.new(name: 'Cars', photo_path: 'cars.jpg')
cars.save

starwars = Category.new(name: 'Star Wars  ', photo_path: 'starwars.jpg')
starwars.save

boardgames = Category.new(name: 'Boardgames', photo_path: 'boardgames.jpg')
boardgames.save
