class Game < ActiveRecord::Base
  has_many :favorites
  has_many  :user, through: :favorites, source: :user
end
