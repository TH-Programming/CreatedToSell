# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
creator_hash = {username: "Tyler", email: "ty.huff24@gmail.com", password: "pass", about: "This is my store", age: 26}
creator = Creator.create(creator_hash)
creator.merchandises.create(title: "Air", description: "High Quality O2", price: 99.99)
creator.merchandises.create(title: "Water", description: "High Quality H2O", price: 99.99)

user_hash = {username: "Allie", password: "pass", email: "allie@gmail.com", about:"My name is allie. I buy stuff", age:26}
user = User.create(user_hash)

MerchandiseCategory.create(name: "Photos")
MerchandiseCategory.create(name: "Videos")
MerchandiseCategory.create(name: "Subscriptions")
MerchandiseCategory.create(name: "Tangibles")
MerchandiseCategory.create(name: "Other")

