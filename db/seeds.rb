10.times do
  User.create!(email: Faker::Internet.safe_email, password: "password", username: Faker::HarryPotter.character)
end
users = User.all
bool = [true, false]

10.times do
  Game.create!(title: Faker::Book.title, genre: Faker::Book.genre, couch_coop: bool.sample, multiplayer: bool.sample)
end

games = Game.all

10.times do
  Favorite.create!(user: users.sample, game: games.sample)
end