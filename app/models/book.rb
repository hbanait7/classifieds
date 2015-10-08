class Book < ActiveRecord::Base

  belongs_to :user

  validates :title, :author, :price, :details, presence: true

  validates :details, length: { minimum: 50 }

  mount_uploader :attachment, AttachmentUploader

end
