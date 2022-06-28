json.extract! service_variant, :id, :service_id, :name, :price, :company_id, :description, :category, :offered_locations, :quantity, :available, :created_at, :updated_at
json.url service_variant_url(service_variant, format: :json)
