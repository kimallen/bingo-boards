class Game < ActiveRecord::Base
  has_many :clues
  belongs_to :user
  has_many :rounds


  # takes in an array of clues
  # if there are less than 25 clues
  def generate_board(board_size = 25, clues)
    clues.shuffle!
    if clues.length == board_size
      return clues
    else
      if clues.length > board_size
        return clues[0...board_size]
      else
        remaining = board_size % clues.length
        if remaining == 0
          generate_board(board_size, clues * board_size.div(clues.length))
        else
          generate_board(board_size, clues + clues[0...remaining])
        end
      end
    end
  end
end
