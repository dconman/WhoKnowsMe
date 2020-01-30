# frozen_string_literal: true

class CreateMerchants < ActiveRecord::Migration[6.0]
  def change
    create_table :merchants do |t|
      t.string :name, limit: 30
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
    add_index :merchants, [:user_id, :name], unique: true
  end
end
