class Player < ActiveRecord::Base
  has_many :players_rounds
  has_many :rounds, through: :players_rounds
end
