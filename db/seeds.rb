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

puts "📝 Seeding review data... 🌱"
20.times do |index|
  locations = ["Target", "Amazon", "Barnes & Noble", "Gift, not purchased", "Buffalo Games Website"]
  yes_or_no = [true, false]
  Review.create(
    # grabs a random id from those in the Puzzles and Users tables
    puzzle_id: Puzzle.ids.sample,
    user_id: User.ids.sample,
    purchase_reason: Faker::Hipster.sentences(number: rand(1..3)).join,
    purchase_location: locations.sample,
    poster: yes_or_no.sample,
    piece_quality: rand(1..5),
    piece_quality_desc: Faker::Hipster.sentences(number: rand(2..7)).join,
    fit_quality: rand(1..5),
    fit_quality_desc: Faker::Hipster.sentences(number: rand(2..7)).join,
    finished_quality: rand(1..5),
    finished_quality_desc: Faker::Hipster.sentences(number: rand(2..4)).join,
    difficulty: rand(1..5),
    difficulty_desc: Faker::Hipster.sentences(number: rand(1..5)).join,
    recommend: yes_or_no.sample,
    recommend_desc: Faker::Hipster.sentences(number: rand(1..3)).join,
    created_at: Faker::Date.between(from: 27.days.ago, to: Date.today)
  )
end
puts "✨ Review data seeded ✨"
