class Round < ActiveRecord::Base
  belongs_to :game
  has_many :player_rounds
  has_many :players, through: :player_rounds
end
