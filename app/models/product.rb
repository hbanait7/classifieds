class Product < ActiveRecord::Base

  validates :name, :price, :category, :description, presence: true

  belongs_to :user

end
