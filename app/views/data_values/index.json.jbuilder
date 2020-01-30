# frozen_string_literal: true

json.array! @data_values, partial: "data_values/data_value", as: :data_value
