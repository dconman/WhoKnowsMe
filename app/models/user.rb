# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :merchants
  has_many :data_values
  validates :username, uniqueness: true
end
