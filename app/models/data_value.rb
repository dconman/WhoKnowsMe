class DataValue < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :merchants, through :data_connections
end
