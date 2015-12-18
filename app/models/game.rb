class Game < ActiveRecord::Base
  has_many :clues
  belongs_to :user
end
