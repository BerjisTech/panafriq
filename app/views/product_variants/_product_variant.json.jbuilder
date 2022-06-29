# frozen_string_literal: true

json.extract! product_variant, :id, :product_id, :name, :price, :company_id, :description, :category,
              :offered_locations, :quantity, :available, :created_at, :updated_at
json.url product_variant_url(product_variant, format: :json)
