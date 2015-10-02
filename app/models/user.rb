class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  has_secure_password

  validates :name, :email, :password, :password_confirmation, presence: true

  validates :password, length: { minimum: 6 }

  has_many :products

  # https://www.railstutorial.org/book/log_in_log_out#sec-testing_layout_changes
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  

end
