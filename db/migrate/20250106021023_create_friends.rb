class CreateFriends < ActiveRecord::Migration[8.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.datetime :birthday
      t.integer :age

      t.timestamps
    end
  end
end
