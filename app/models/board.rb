class Set < ActiveRecord::Base
  has_many :clues
  belongs_to :user

  # takes in an array of clues
  # if there are less than 25 clues
  def generate_board(clues)
    clues.shuffle
    clues
  end

end
