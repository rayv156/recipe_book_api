class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :password_digest
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
