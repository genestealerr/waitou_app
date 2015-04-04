class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :deviceid

      t.timestamps
    end
  end
end
