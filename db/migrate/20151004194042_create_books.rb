class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :isbn
      t.integer :price
      t.text :details

      t.timestamps null: false
    end
  end
end
