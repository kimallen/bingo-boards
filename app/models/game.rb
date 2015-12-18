class Game < ActiveRecord::Base
  has_many :clues
  belongs_to :user
  has_and_belongs_to :rounds


  # takes in an array of clues
  # if there are less than 25 clues
  # def generate_board(clues)
  #   clues.shuffle
  #   clues
  # end
end
