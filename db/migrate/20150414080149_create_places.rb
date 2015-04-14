class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.integer :category, array: true, default: []
      t.string :picture
      t.integer :pricerate
      t.integer :creator
      t.float :longitude
      t.float :latitude
      t.integer :updator, array: true, default: []
      t.integer :likes, array: true, default: []

      t.timestamps
    end
  end
end
