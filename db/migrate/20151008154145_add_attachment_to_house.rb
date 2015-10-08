class AddAttachmentToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :attachment, :string
  end
end
