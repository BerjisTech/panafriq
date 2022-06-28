json.extract! service, :id, :name, :price, :company_id, :description, :category, :offered_locations, :quantity, :available, :created_at, :updated_at
json.url service_url(service, format: :json)
