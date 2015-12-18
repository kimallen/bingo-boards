require 'Faker'

1.times do
  User.create(email: Faker::Internet.email, password: "123", name: Faker::Name.name)
end

2.times do
  Game.create(name: Faker::Commerce.product_name, theme: Faker::Team.creature, user_id: 1)
end

80.times do
  Clue.create(text: Faker::Lorem.paragraph, user_id: 1, game_id: rand(1..2))
end
