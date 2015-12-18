class Game < ActiveRecord::Base
  has_many :clues
  belongs_to :user
  has_and_belongs_to :rounds


  # takes in an array of clues
  # if there are less than 25 clues
  def generate_board(clues)
    clues.shuffle!
    if clues.length == 25
      return clues
    else
      if clues.length > 25
        return clues[0...25]
      else
        remaining = 25 % clues.length
        if remaining == 0
          generate_board(clues * 25/clues.length)
        else
          generate_board(clues + clues[0.. .remaining])
        end
      end
    end
  end
end
