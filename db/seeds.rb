# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([ name: 'Star Wars' ,  name: 'Lord of the Rings' ])
#   Character.create(name: 'Luke', movie: movies.first)


morgan = User.create(username: 'Morgan', password: 'password')
john = User.create(username: 'John', password: '123')

Stock.create(name: 'NKE', user_id: 1, purchase_price: 90, purchase_amount: 10)
Stock.create(name: 'AAPL', user_id: 1, purchase_price: 350, purchase_amount: 5)
Stock.create(name: 'AMZN', user_id: 1, purchase_price: 2500, purchase_amount: 1)

Stock.create(name: 'NKE', user_id: 2, purchase_price: 90, purchase_amount: 15)
Stock.create(name: 'AAPL', user_id: 2, purchase_price: 350, purchase_amount: 9)
Stock.create(name: 'AMZN', user_id: 2, purchase_price: 2500, purchase_amount: 4)
Stock.create(name: 'UAL', user_id: 2, purchase_price: 33, purchase_amount: 80)