class IgdbApi

 def self.get_games(term)
  results = Unirest.get "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name%2Crelease_dates&limit=1&offset=0&search=#{term}",
  headers:{
   "X-Mashape-Key" => ENV[MASHAPE_KEY],
   "Accept" => "application/json"
  }
  p results
 end
end
