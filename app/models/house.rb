class House < ActiveRecord::Base

  belongs_to :user

  validates :price, :bedrooms, :bathrooms, :sqfeet, :details, presence: true

  validates :details, length: { minimum: 50 }

end
