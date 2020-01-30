# frozen_string_literal: true

class CreateDataValues < ActiveRecord::Migration[6.0]
  def change
    create_table :data_values do |t|
      t.string :name, limit: 30
      t.integer :type
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end

    add_index :data_values, [:user_id, :name], unique: true
  end
end
