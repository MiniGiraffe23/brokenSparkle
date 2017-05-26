class User < ActiveRecord::Base
  has_many  :favorites
  has_many  :favorited_games, through: :favorites, sourse: :games
end
