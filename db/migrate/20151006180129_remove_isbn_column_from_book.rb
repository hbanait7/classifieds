class RemoveIsbnColumnFromBook < ActiveRecord::Migration
  def change
    remove_column :books, :isbn, :string
  end
end
