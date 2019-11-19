# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pet.destroy_all if Rails.env.development?


20.times do
  Pet.create!(location: Faker::Address.city,
              color: ["white", "brown", "black"].sample,
              species: %w(dog cat).sample,
              date_found: Date.today,
              size: %w(small medium large).sample)
end

puts "Created #{Pet.count} pets"
