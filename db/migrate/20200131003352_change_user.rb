# frozen_string_literal: true

class ChangeUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :name, :username
  end
end
