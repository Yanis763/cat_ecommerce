require 'faker'

# ****************************** Create 2 products ******************************
2.times do
  Product.create(title: Faker::Artist.name, description:Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 2))
end
tp Product.all

# ****************************** Create 2 orders ******************************
2.times do
  Order.create(quantity: Faker::Number.between(from: 1, to: 10))
end
tp Order.all
