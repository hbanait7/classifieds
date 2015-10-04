class Book < ActiveRecord::Base

  belongs_to :user

  validates :author, :price, :isbn, :details, presence: true

  validates :details, length: { minimum: 50 }

end
