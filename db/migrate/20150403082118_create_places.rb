class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :priceRate
      t.float :lattitude
      t.float :longitude
      t.integer :likes

      t.timestamps
    end
  end
end
