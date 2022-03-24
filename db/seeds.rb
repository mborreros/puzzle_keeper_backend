puts "🌱👤 Seeding user data... 👤🌱"
# user seed data
6.times do |index|
  User.create(
    name: Faker::Name.first_name,
    bio: Faker::Lorem.sentence(word_count: 7),
    join_date: Faker::Date.between(from: 30.days.ago, to: Date.today)
  )
end
puts "✅ User data seeded ✅"
