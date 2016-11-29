class User < ActiveRecord::Base
  has_many :rounds

  validates :username, { presence: true, uniqueness: true }
  validates :full_name, { presence: true }
  validates :password, { presence: true }

  # Bcrypt Code:
  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    if user.try("password") == password
      user # returns user object
    else
      nil # invalid user
    end
  end
end
