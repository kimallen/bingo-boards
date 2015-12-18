class Round < ActiveRecord::Base
  has_and_belongs_to :games
  has_and_belongs_to :players
end
