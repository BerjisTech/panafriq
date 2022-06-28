json.extract! product, :id, :name, :price, :company_id, :description, :category, :offered_locations, :quantity, :available, :created_at, :updated_at
json.url product_url(product, format: :json)
