class Game < ActiveRecord::Base
  has_many :favorites
  has_many  :user_favorites, through: :favorites, source: :user
end
