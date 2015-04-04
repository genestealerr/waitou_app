class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, limit: 50
      t.integer :category
      t.integer :pricerate
      t.float :latitude
      t.float :longitude
      t.integer :likes

      t.timestamps
    end
  end
end
