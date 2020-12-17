class CreateGroceryLists < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_lists do |t|
      t.string :aisle, array: true, default: []
      t.string :items, array: true, default: []
      t.integer :user_id

      t.timestamps
    end
    add_index :grocery_lists, :user_id
  end
end
