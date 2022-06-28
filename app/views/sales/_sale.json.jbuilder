json.extract! sale, :id, :company_id, :is_product, :is_service, :products, :services, :amount, :status, :customer_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
