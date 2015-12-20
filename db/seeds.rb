require 'Faker'

num_users = 1
num_players = 5
num_rounds = 8
num_games = 2


num_users.times do
  User.create(email: Faker::Internet.email, password: "123", name: Faker::Name.name)
end

num_games.times do
  Game.create(name: Faker::Commerce.product_name, theme: Faker::Team.creature, user_id: num_users)
end

80.times do
  Clue.create(text: Faker::Lorem.paragraph, user_id: num_users, game_id: rand(1..num_games))
end

num_players.times do

	Player.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number)

num_rounds.times do
	Round.create(random_url: Faker::Internet.domain_word)

end

8.times do
	PlayerRound.create(player_id: rand(num_players), round_id: rand(num_rounds))
end
