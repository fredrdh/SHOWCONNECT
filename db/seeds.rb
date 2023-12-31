Appointment.destroy_all
Event.destroy_all
User.destroy_all
require "open-uri"

15.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    cpf: Faker::Number.number(digits: 11),
    password: "123123"
  )
end

15.times do
  event = Event.new(
    stage_name: Faker::Music.band,
    category: ["concert", "convention", "music"].sample,
    specialty: Faker::Music.genre,
    user_id: User.all.pluck(:id).sample,
    description: Faker::Lorem.paragraph,
    local: Faker::Address.street_address,
    event_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    price: Faker::Number.within(range: 300..1000)
  )
  # file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
  # event.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end

15.times do
    Appointment.create!(
      user_id: User.all.pluck(:id).sample,
      event_id: Event.all.pluck(:id).sample,
      timeslot: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
    )
  end
puts "Created #{User.count} users"
puts "Created #{Event.count} events"
puts "Created #{Appointment.count} appointments"

