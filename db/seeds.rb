# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all


50.times do |index|
  product = Product.create!(name: Faker::Coffee.blend_name,
                              origin: Faker::Nation.capital_city,
                              cost: Faker::Number.between(from: 1, to: 10))
  5.times do |rev|
    Review.create!(author: Faker::Dessert.topping,
                        content_body: Faker::Lorem.characters(number: 50),
                        rating: Faker::Number.between(from: 1, to: 5),
                        product_id: product.id)
  end
end

User.create!(:email => 'admin@admin.com', :password => 'adminthesite', :admin => true)

p "Created #{Product.count} Products with 5 reviews each"