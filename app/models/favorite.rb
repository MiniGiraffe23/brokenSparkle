class Favorite < ActiveRecord::Base
  belongs_to  :user
  belongs_tog :game
end
