User.destroy_all
Product.destroy_all
Order.destroy_all

require 'faker'
Faker::Config.locale = :fr

# ****************************** Create 2 products ******************************
1.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email(domain: 'yopmail.com'))
end
tp User.all


20.times do
  Product.create(title: Faker::Artist.name, description:Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 2))
end
tp Product.all

# ****************************** Create 2 orders ******************************
2.times do
  Order.create(quantity: Faker::Number.between(from: 1, to: 10))
end
tp Order.all
