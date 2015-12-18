class User < ActiveRecord::Base

  has_many :games
  has_many :clues, through: :games

  def password
  	@password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
  	@password = BCrypt::Password.create(new_password)
  	self.password_hash = @password
  end
end
