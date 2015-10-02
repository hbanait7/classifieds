class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  has_secure_password

  validates :name, :email, :password, :password_confirmation, presence: true

  validates :password, length: { minimum: 6 }

  has_many :products

end
