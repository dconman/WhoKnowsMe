# frozen_string_literal: true

json.extract! data_value, :id, :created_at, :updated_at
json.url data_value_url(data_value, format: :json)
