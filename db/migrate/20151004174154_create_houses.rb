class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :price
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :sqfeet
      t.text :details

      t.timestamps null: false
    end
  end
end
