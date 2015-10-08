class Product < ActiveRecord::Base

  validates :name, :price, :description, presence: true

  belongs_to :user

  mount_uploader :attachment, AttachmentUploader

end
