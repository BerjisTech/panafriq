json.extract! storage, :id, :user_id, :locations, :storage_staff, :storage_type, :storage_price, :created_at, :updated_at
json.url storage_url(storage, format: :json)
