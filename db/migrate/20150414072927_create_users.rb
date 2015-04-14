class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.string :userpicture

      t.timestamps
    end
  end
end
