class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 30
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :name, unique: true
  end
end
