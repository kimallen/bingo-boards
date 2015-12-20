class Round < ActiveRecord::Base
  belongs_to :game
  has_many :players_rounds
  has_many :players through: :players_rounds
end
