# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# seed.rb
# Event.destroy_all

Event.destroy_all
User.destroy_all

5.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    cpf: Faker::Number.number(digits: 11),
    password: "123123"
  )
end

5.times do
  Event.create!(
    stage_name: Faker::Music.band,
    category: ["concert", "convention", "music"].sample,
    specialty: Faker::Music.genre,
    user_id: User.all.pluck(:id).sample,
    description: Faker::Lorem.paragraph,
    local: Faker::Address.street_address,
    event_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    price: Faker::Number.within(range: 300..1000)
  )
end
puts "Created #{Event.count} events"
