require 'faker'

puts "Cleaning database..."
Flat.destroy_all

20.times do
  Flat.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Address.street_address,
    details: Faker::Lorem.paragraph,
    avg_rating: Faker::Number.between(from: 1.0, to: 5.0),
    price: Faker::Number.between(from: 50, to: 150),
    user_id: 1
  )
end
