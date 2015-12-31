class Clue < ActiveRecord::Base
  belongs_to :game
  validates :text, presence: true
  has_one :user, through: :game
end
