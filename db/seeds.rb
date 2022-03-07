# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'resets DB'
AdminUser.destroy_all
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end
Customer.destroy_all
Customer.create({ name: 'Client Full Name', email: 'example@mail.com', credit_card: '123456789ccnumber',
                  address: 'Pretty City, Main Road 13, Flat No. 2' })
Product.destroy_all
Product.create({ name: 'RubyEbook1', price: 100 })
Product.create({ name: 'RubyEbook2', price: 50 })
Product.create({ name: 'RubyEbook3', price: 33 })
Cart.destroy_all
