class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :deviceId

      t.timestamps
    end
  end
end
