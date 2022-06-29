# frozen_string_literal: true

json.extract! company_location, :id, :company_id, :products, :services, :name, :user_id, :created_at, :updated_at
json.url company_location_url(company_location, format: :json)
