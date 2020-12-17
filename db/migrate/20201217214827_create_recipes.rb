class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :ingredients, array: true, default: []
      t.string :instructions
      t.string :prep_time
      t.string :cook_time
      t.string :summary
      t.integer :user_id

      t.timestamps
    end
  end
end
