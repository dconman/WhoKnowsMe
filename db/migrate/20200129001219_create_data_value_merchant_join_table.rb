# frozen_string_literal: true

class CreateDataValueMerchantJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :data_values, :merchants do |t|
      t.index :data_value_id
      t.index :merchant_id
    end
  end
end
