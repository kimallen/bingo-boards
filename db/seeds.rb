require 'Faker'

1.times do
  User.create(email: Faker::Internet.email, password: "123", name: Faker::Name.name)
end

2.times do
  Game.create(name: Faker::Commerce.product_name, theme: Faker::Team.creature, user_id: rand(1..5))
end

80.times do
  Clue.create(text: Faker::Lorem.paragraph, user_id: rand(1..20), set_id: rand(1..2))
end
