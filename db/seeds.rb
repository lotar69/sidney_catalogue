# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creation'
Animal.destroy_all
Seller.destroy_all
Buyer.destroy_all

buyer1 = Buyer.new(user_name: 'DAWSON', password: '123456')
puts ("buyer1 new ok")

buyer1.save!
puts ("buyer1 ok")


buyer2 = Buyer.new(user_name: 'DECKARD', password: '123456')
buyer2.save!
puts ("buyer2 ok")

buyer3 = Buyer.new(user_name: 'JACOBSON', password: '123456')
buyer3.save!
puts ("buyer3 ok")

seller1 = Seller.new(user_name: 'VAN NESS', password: '123456')
seller1.save!
puts ("seller1 ok")

seller2 = Seller.new(user_name: 'DRAKER', password: '123456')
seller2.save!
puts ("seller2 ok")


seller3 = Seller.new(user_name: 'ANIMERS', password: '123456')
seller3.save!
puts ("seller3 ok")

animal1 = Animal.new(gender: 'male', category: 'dog', age: 'young', stage: '1st hand', health: 'good', description: 'robot dog', seller_id: seller1[:id], price: 50000)
animal1.save!
puts("animal ok")

animal2 = Animal.new(gender: 'female', category: 'cat', age: 'young', stage: '1st hand', health: 'good', description: 'cute robot cat', seller_id: seller3[:id], price: 40000)
animal2.save!
puts("animal ok")

animal3 = Animal.new(gender: 'male', category: 'dog', age: 'old', stage: '2nd hand', health: 'bad', description: 'almost dead robot dog', seller_id: seller2[:id], price: 10000)
animal3.save!
puts("animal ok")

puts 'cree'
