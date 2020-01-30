# frozen_string_literal: true

class DataValue < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :merchants
end
