# frozen_string_literal: true

json.extract! customer, :id, :user_id, :company_id, :trucker_id, :storage_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
