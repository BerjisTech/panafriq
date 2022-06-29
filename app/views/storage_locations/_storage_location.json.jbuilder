# frozen_string_literal: true

json.extract! storage_location, :id, :storage_id, :products, :services, :name, :user_id, :storage_size, :storage_type,
              :storage_price, :created_at, :updated_at
json.url storage_location_url(storage_location, format: :json)
