class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :ingredients, array: true, default: []
      t.string :instructions, array: true, default: []
      t.string :prep_time
      t.string :cook_time
      t.string :summary
      t.string :name
      t.string :img
      t.integer :user_id

      t.timestamps
    end
  end
end
