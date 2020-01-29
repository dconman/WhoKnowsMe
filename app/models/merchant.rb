class Merchant < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :data_values
end
