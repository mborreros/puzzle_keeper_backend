puts "👤 Seeding user data... 🌱"
6.times do |index|
  User.create(
    name: Faker::Name.first_name,
    bio: Faker::Lorem.sentence(word_count: 7),
    join_date: Faker::Date.between(from: 30.days.ago, to: Date.today)
  )
end
puts "✨ User data seeded ✨"

puts "🧩 Seeding puzzle data... 🌱"
25.times do |index|
  manufacturers = ["Ravensburger", "MB", "Eurographics", "Buffalo Games", "Bits and Pieces", "Galison"]
  Puzzle.create(
    # need to think of better way to get more believable titles
    title: Faker::Verb.simple_present.capitalize,
    pieces: 1000,
    manufacturer: manufacturers.sample,
    price: Faker::Number.decimal(l_digits: 2),
    owned: true,
    added_to_collection: Faker::Date.between(from: 60.days.ago, to: Date.today)
  )
end
puts "✨ Puzzle data seeded ✨"
