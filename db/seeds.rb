require 'faker'
# ****************************** Create 2 Users ******************************
2.times do
  User.create(encrypted_password: Faker::Internet.password, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email(domain: 'yopmail.com'))
end
tp User.all


# ****************************** Create 2 products ******************************
2.times do
  Product.create(title: Faker::Artist.name, description:Faker::Creature::Cat.breed, price: Faker::Number.decimal(l_digits: 2))
end
tp Product.all


# ****************************** Create 2 carts ******************************
2.times do
  Cart.create(user: User.all.sample)
end
tp Cart.all
# ****************************** Create 2 orders ******************************
2.times do
  Order.create(cart: Cart.all.sample, product: Product.all.sample, quantity: Faker::Number.between(from: 1, to: 10))
end
tp Order.all

