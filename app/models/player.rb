class Player < ActiveRecord::Base
  has_and_belongs_to :rounds
end
